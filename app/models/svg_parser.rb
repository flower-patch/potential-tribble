require 'net/http'

class SvgParser
  IMAGE_FILL_RESOLUTION = "810" #width and height, in pixels, of image fills and final raster image
# TODO this works for a final raster image of 810 (assuming 90 DPI). How do we get a DPI of 150 from this svg?

  attr_reader :svg, :paths

  FABRIC_WIDTH = 42

  def initialize(svg)
    @svg = Nokogiri::XML(svg)
    @svg.encoding = 'UTF-8'


    @paths = @svg.xpath('//*[@d]')
  end

  # replaces the image in *every* pattern fill with a base64 png data uri
  def replace_image_fill( replacement_uri )
    puts replacement_uri
    puts replacement_uri.force_encoding('utf-8')
    puts replacement_uri.encoding
    images = @svg.css("image")
    images.each do |x|
      x["xlink:href"] = "data:image/png;base64,"+replacement_uri.to_s
      x["width"] = IMAGE_FILL_RESOLUTION
      x["height"] = IMAGE_FILL_RESOLUTION
    end

    patterns = @svg.css("pattern")
    patterns.each do |x|
      x["width"] = IMAGE_FILL_RESOLUTION
      x["height"] = IMAGE_FILL_RESOLUTION
      x["y"] = "242" #FIXME this works because SVG o.O
      # x["x"] = "-120" #FIXME this works and god knows why


      x["viewBox"] = "0 0 #{IMAGE_FILL_RESOLUTION} #{IMAGE_FILL_RESOLUTION}"

    end
# FIXME positioning:
#   possible culprits: <svg ... viewBox="0 0 572.72729 810.00002"
# => <G ... transform="translate(0,-242.36215)" NOTE: don't undo this, it shifts the whole svg down!

    puts images
    puts @svg.encoding
    return images
  end

  # TODO this doesn't seem to actually remove the stroke in my render of the svg???
  def remove_path_style
    path = @svg.css("path")
    path.each do |x|
      x.delete("style")
      modified_fill = x["fill"].to_s.gsub("'","")
      x["style"] = "fill:"+ modified_fill + ";fill-opacity:1.0"
    end

    group = @svg.css("g")
    group.each do |x|
      x.delete("style")
    end

    return path
  end

  # if you just want to download a png, use this
  # def self.svg_to_png(svg, width, height)
  #width = width of the svg in px
  #height = width of the svg in px
  def self.svg_to_png(input, width, height)
    # svg = RSVG::Handle.new_from_data(@svg.to_xml.to_s)
    svg = RSVG::Handle.new_from_data(input)

    width   = width  ||=500
    height  = height ||=500
    surface = Cairo::ImageSurface.new(Cairo::FORMAT_ARGB32, width, height)
    context = Cairo::Context.new(surface)
    context.render_rsvg_handle(svg)
    b = StringIO.new
    surface.write_to_png(b)
    return b.string
  end

  # FIXME probably don't need to keep this method around forever, it's just to workaround a problem
  def svg_file_to_png(filename, width, height)
    svg_data = File.open(filename, 'rb') {|f| f.read }

    svg = RSVG::Handle.new_from_data(svg_data)

    width   = width  ||=500
    height  = height ||=500
    surface = Cairo::ImageSurface.new(Cairo::FORMAT_ARGB32, width, height)
    context = Cairo::Context.new(surface)
    context.render_rsvg_handle(svg)
    b = StringIO.new
    surface.write_to_png(b)
    return b.string
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
    preview_pixels = IMAGE_FILL_RESOLUTION

    location = "http://api.v1.spoonflower.com/design/previewImage/"
    location += design_id
    location += "?print_width=" + print_width
    location += "&print_height=" + print_height
    location += "&preview_width_pixels=" + preview_pixels
    location += "&preview_height_pixels=" + preview_pixels

    return location
  end

  # KEA see if we need this @paths business for real
  def path_coords(path_id)
    current_path = @paths.xpath('//*[@id="' + path_id +'"]')
    array = current_path.first[:d].split
    coords_array = []
    array.each do |a|
      # gets rid of the m and z
      next if a.match(/[a-zA-Z]/)
      coord_pair = a.split(',').map {|x| x.to_f }
      coords_array << coord_pair
    end
    coords_array
  end

  def get_design_number(design_id)
    array = design_id.split("_")
    array[1]
  end

  def all_unique_design_ids
    design_ids_array = []
    patterns = @svg.css("pattern")
    if patterns.length > 0
      design_ids_array = patterns.map {|p| p["id"]}
      if @svg.xpath('//*[contains(@fill, "#ffffff" )]').length > 0
        design_ids_array << "#ffffff"
      end
    else
      design_ids_array << "#ffffff"
    end
    design_ids_array
  end

  def paths_from_id(id)
    paths = @svg.css("path")
    # nastiness to find paths with the fill in this format: fill="url('#img_1459730')"
    selected_paths = paths.xpath('//*[@fill="url(' + "'#" + id + "')" + '"]')

  end

  # KEA needs to eventually incorporate edge bleed on seam allowance
  # gives results in square inches
  def surface_area_for_cheater_block_royalties(total_number_of_blocks)
    area_hash = {}
    all_unique_design_ids.each do |id|
      total_block_area = 0
      selected_paths = paths_from_id(id)
      selected_paths.each do |path|
        if path[:d]
          coords = path_coords(path[:id])
          if coords.length == 4
            # 0 is for the seam allowance that we don't have here
            sides = rectangle_side_lengths(0, coords)
            area = sides[0] * sides[1]
          else
            side = triangle_base_side_length(0, coords)
            # square being the imaginary square that you make when calculating triangle area
            square_area = side * side
            area = square_area / 2
          end
          total_block_area += area
        end
      end
      total_area = total_block_area * total_number_of_blocks
      area_hash["#{id}"] = total_area.round(2)
    end
    area_hash
  end

  # for testing -- all areas of all fabrics in one square should be about 81
  def total_area(area_hash)
    area_hash.values.reduce(:+).round(2)
  end

  def clean_up(coord_value)
    # sometimes path coordinates are negative
    # 90 is the magic number that takes us from pixels to inches
    c = coord_value.abs
    c / 90
  end

  def find_height(hypotenuse)
    # super magic number! 45 degrees expressed in radians
    height = hypotenuse * (Math.sin(0.785398163))
  end

  # looks at the pair of coords derived from the svg and derives a side length of the shape in inches
  def rectangle_side_lengths(seam_allowance, coords)
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
    [side1, side2]
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

  def triangle_base_side_length(seam_allowance, coords)
    if seam_allowance == 0.25
      # 0.875 is our favorite magic number: the length you add to a straight side of a triangle
      # when the seam allowance is 0.25 to account for
      # the additional length of the side of a square made of two triangles together
      # with seam allowance all around
      # when we support additional seam allowances, we can change this
      side = 0.875
    else
      side = 0
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
    side
  end

  # gives result in square inches with the design id
  def all_cut_and_sew_fabric_areas(total_number_of_blocks)
    area_hash = {}
    all_unique_design_ids.each do |id|
      dimensions = cut_and_sew_print_dimensions_by_design(id, total_number_of_blocks)
      total_area = dimensions[0] * dimensions[1]
      area_hash["#{id}"] = total_area.round(2)
    end
    area_hash
  end

  # could pass this seam allowance, but just going to go with .25 for now

  # this method needs refactoring like whoa.  refactoring is for later.
  # basically what it does is assumes fabric printable width of 42 inches
  # gives a 0.5 inch seam allowance on all sides to allow for printing off grain
  # and calculates the y distance, the length of the fabric needed in a certain design
  # when patches of each shape are printed in rows across the width
  # so there is a smidge of extra fabric at row ends
  # and if patches don't go across the whole row, we're rounding up and including it
  # because tesselation is for later.
  def cut_and_sew_print_dimensions_by_design(design_id, total_number_of_blocks)
    y = 1 # half inch extra at top and bottom to allow for grain issues
    total_coords = []
    selected_paths = paths_from_id(design_id)
    selected_paths.each do |path|
      # this if path[:d] is an irritating wrapper but otherwise was getting the entire svg along with the paths i wanted, which ruined my methods
      # here we look at svg coords of all squares, rectangles, or isosceles right triangles
      # and get a set of coords that reflect side lengths in inches out of that
      if path[:d]
        coords = path_coords(path[:id])
        # 4 pairs of coords means square or rectangle
        if coords.length == 4
          # quarter inch seam allowance
          sides = rectangle_side_lengths(0.25, coords)
          # for as many blocks as are in the project, gives a set of patch dimensions
          # sorted so that if it's a rectangle, the longer side will be the x
          # and go across the stripes on the fabric instead of inflating the y length
          # uggh, and using the word coords again, but not the same as the path coords above
          total_number_of_blocks.times do
            total_coords << sides.sort.reverse
          end
        else
          side = triangle_base_side_length(0.25, coords)
          # triangles are easiest to print paired with others to make squares
          # figures out how many squares are needed, rounds up if it's an odd number
          paired_triangles = (total_number_of_blocks/2.to_f).ceil
          paired_triangles.times do
            total_coords << [side, side]
          end
        end
      end
    end
    # looking here for all different size patches of this fabric and how many there are of each
    unique_coords = total_coords.uniq
    sorted_coords = {}
    unique_coords.each do |pair|
      sorted_coords[pair] = total_coords.count(pair)
    end
    squares_per_row = []
    number_of_this_type_of_squares = []
    x_value = []
    y_value = []
    # 42 inch fabric width, - 0.5 inch on each side seam allowance, so hi there 41
    # the floor gives the max number of full patches that can fit in a row
    sorted_coords.each do |key, value|
      squares_per_row << (41 / key[0].to_f).floor
      x_value << key[0]
      y_value << key[1]
      number_of_this_type_of_squares << value
    end
    # the ceiling gives how many rows across we need...a partial row rounds up to a full row
    number_of_rows = []
    number_of_this_type_of_squares.each_with_index do |n, index|
      number_of_rows << (n / squares_per_row[index].to_f).ceil
    end
    # for every row of that patch we need, we add a y-length to the total
    y_lengths = []
    number_of_rows.each_with_index do |n, index|
      y_lengths << n * y_value[index]
    end
    # we now have an array of all total y lengths and just need to add them up
    y += y_lengths.reduce(:+).round(2)
    [SvgParser::FABRIC_WIDTH, y]
  end



end
