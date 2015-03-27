require 'net/http'

class SvgParser
  attr_reader :svg, :paths

  def initialize(svg)
    @svg = Nokogiri::XML(svg)
    @paths = @svg.xpath('//*[@d]')
  end


  def all_path_ids
    @paths.map {|p| p[:id]}
  end


  def all_paths_coords_split
    @paths.map {|p| p["d"].split}
  end

  # replaces the image in *every* pattern fill with a base64 png data uri
  def replace_image_fill( replacement_uri )
    images = @svg.css("image")
    images.each do |x|
      x["xlink:href"] = "data:image/png;base64,"+replacement_uri
      x["width"] = "810" #FIXME magic number used for image resolution :(
      x["height"] = "810" #FIXME magic number used for image resolution :(
      # x["y"] = "-242"
      # x["x"] = "242"

    end

    patterns = @svg.css("pattern")
    patterns.each do |x|
      x["width"] = "810" #FIXME magic numbers. you're doing it again!
      x["height"] = "810" #FIXME magic numbers. STAHP.
      x["y"] = "242" #FIXME this works because SVG o.O
      x["x"] = "-120" #FIXME this works and god knows why

      x["viewBox"] = "0 0 810 810" #FIXME magic numbers. magic numbers everywhere.
    end
# FIXME positioning:
#   possible culprits: <svg ... viewBox="0 0 572.72729 810.00002"
# => <G ... transform="translate(0,-242.36215)" NOTE: don't undo this, it shifts the whole svg down!

    return images
  end

  # TODO this doesn't seem to actually remove the path in my render of the svg???
  def remove_path_style
    path = @svg.css("path")
    path.each do |x|
      x.delete("style")
    end
    return path
  end

  # provide Base64 URI for an image online, where location is a string, ex: "http://place.com/someimage.png"
  def get_image_from_web( location )
    png = Net::HTTP.get(URI(location))
    return Base64.encode64(png)
  end

  # provide Base64 URI for an image online, with basic auth-- assumes that ENV is set for username and password
  def get_image_from_web_with_basic_auth( location )
    uri = URI(location)

    req = Net::HTTP::Get.new(uri)
    req.basic_auth ENV['SPOONFLOWER_USERNAME'], ENV['SPOONFLOWER_PASSWORD']

    res = Net::HTTP.start(uri.hostname, uri.port) {|http|
      http.request(req)
    }
    # return res.body
    return Base64.encode64(res.body)
  end

  # TODO: if you ever make blocks in a size other than 9", this method will be a problem
  # TODO: if anything changes with the Spoonflower API, this location URL might not work
  def spoonflower_image_location_from_id( design_id )
    # blargh. magic numbers:
    print_width = "9" #inches
    print_height = "9" #inches
    preview_pixels = "810" #assuming 150 DPI and 9 inch blocks

    location = "http://api.v1.spoonflower.com/design/previewImage/"
    location += design_id
    location += "?print_width=" + print_width
    location += "&print_height=" + print_height
    location += "&preview_width_pixels=" + preview_pixels
    location += "&preview_height_pixels=" + preview_pixels

    return location
  end

  def all_paths_coord_pairs
    array = all_paths_coords_split
    all_coord_pairs = []
    array.each do |a|
      inner_array = a
      coords_array = []
      inner_array.each do |i|
        next if i.match(/[a-zA-Z]/)
        coord_pair = i.split(',').map {|x| x.to_f }
        coords_array << coord_pair
      end
      all_coord_pairs << coords_array
    end
    all_coord_pairs
  end


  def path_coords(path_id)
    current_path = @paths.xpath('//*[@id="' + path_id +'"]')
    array = current_path.first[:d].split
    coords_array = []
    array.each do |a|
      next if a.match(/[a-zA-Z]/)
      coord_pair = a.split(',').map {|x| x.to_f }
      coords_array << coord_pair
    end
    coords_array
  end


  def all_unique_image_ids
    all_ids = @paths.map {|p| p['image-id']}
    all_ids.uniq
  end

  # FIXME this method is possibly deprecated
  def replace_fabric_urls(image_id, new_url)
    selected_paths = @paths.xpath('//*[@image-id="' + image_id +'"]')
    selected_paths.each do |path|
      style_array = path["style"].split(';')
      fill_index = 0
      style_array.each_with_index do |style_attribute, index|
        if style_attribute.start_with?("fill:")
          fill_index = index
        end
      end
      fill_value = ["fill:#{new_url}"]
      style_array[fill_index] = fill_value
      new_style = style_array.join(';')
      path["style"] = new_style
    end
    @svg
  end


  def surface_area_by_design_id_with_seam_allowance(seam_allowance)
    area_hash = {}
    all_unique_image_ids.each do |id|
      total_area = 0
      # selected_paths = @paths.xpath('//*[contains(@image-id, ' + id +')]')
      selected_paths = @paths.xpath('//*[@image-id="' + id +'"]')
      selected_paths.each do |path|
        if path[:d]
          coords = path_coords(path[:id])
          if coords.length == 4
            area = rectangle_area(seam_allowance, coords)
          else
            area = triangle_area(seam_allowance, coords)
          end
          total_area += area.round(2)
        end
      end
      area_hash["#{id}"] = total_area
    end
    area_hash
  end

  def clean_up(coord_value)
    # sometimes path coordinates are negative
    # conversion of 90 pixels per inch
    c = coord_value.abs
    c / 90
  end

  def find_height(hypotenuse)
    # magic number! 45 degrees expressed in radians
    height = hypotenuse * (Math.sin(0.785398163))
  end

  def rectangle_area(seam_allowance, coords)
    side1 = 2 * seam_allowance
    side2 = 2 * seam_allowance
    coords[1].each do |c|
      if c != 0
        side1 += clean_up(c)
      end
    end
    coords[2].each do |d|
      if d != 0
        side2 += clean_up(d)
      end
    end
    side1 * side2
  end

  # equilateral right triangle coordinates have 3 basic configurations:
  # triangle made from a square slashed diagonally: d="m 810,645 0,-405 -405,0 z"
  # in this case, the height of the triangle is 405
  # the heights were drawn, then the hypotenuse just closes the path, so it isn't reflected in the coordinates

  # triangle made by lopping top 2 corners off a rectangle: "m 405,645 0,-405 -202.5,202.5 z"
  # in this case, the hypotenuse of the triangle is 405
  # it was drawn, then the last coordinate shows the midpoint of the opposite edge of the original rectangle, where the two sides connect

  # triangle drawn point to point: "m 810,647.36215 -202.5,-202.5 202.5,0 z"
  # in this case, the height of the triangle is 202.5

  # since the negative is directional here, in terms of every coordinate's absolute value:
  # the first kind is easy to spot because each pair is the value and 0
  # the second kind has one value & 0 pair, and one pair of equal values that add up to the other pair
  # the third kind looks similar, but all the values are the same

  def triangle_area(seam_allowance, coords)
    if seam_allowance == 0.25
      side = 0.875
    else
      side = 2 * seam_allowance
    end
    height_or_hypotenuse1 = 0
    height_or_hypotenuse2 = 0
    zero_checker = []
    coords[1].each do |c|
      zero_checker << c if c == 0
      height_or_hypotenuse1 += clean_up(c)
    end
    coords[2].each do |d|
      zero_checker << d if d == 0
      height_or_hypotenuse2 += clean_up(d)
    end
    if zero_checker.length == 2
      side += height_or_hypotenuse1
    else
      if height_or_hypotenuse1 == height_or_hypotenuse2
        side += find_height(height_or_hypotenuse1)
      else
        average_side = height_or_hypotenuse1 + height_or_hypotenuse2
        side += average_side / 3
      end
    end
    square_area = side * side
    square_area / 2
  end

  def total_area(area_hash)
    area_hash.values.reduce(:+).round(2)
  end


end
