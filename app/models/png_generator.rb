module PngGenerator

  # FIXME don't really want everything to be resolution 810
  IMAGE_FILL_RESOLUTION = "810"

  # given svg as a string, change <images> to have the full image ebedded
  # def svg_embed_images( svg )
  #   # find id
  # end

  # replaces the image in *every* pattern fill with a base64 png data uri, based on pattern id
  def svg_replace_image_fill( svg )
    new_svg = Nokogiri::XML(svg)

    patterns = new_svg.css("pattern")
    patterns.each do |x|
      spoonflower_id = x["id"][4..-1]
      x["width"] = IMAGE_FILL_RESOLUTION
      x["height"] = IMAGE_FILL_RESOLUTION
      x["y"] = "242" #FIXME this works because SVG o.O
      x["viewBox"] = "0 0 #{IMAGE_FILL_RESOLUTION} #{IMAGE_FILL_RESOLUTION}"

      image = x.css("image")
      # assuming that there is only one image in each pattern
      image[0]["width"] = IMAGE_FILL_RESOLUTION
      image[0]["height"] = IMAGE_FILL_RESOLUTION
      image[0]["xlink:href"] = "data:image/png;base64,"+ get_png_data( spoonflower_id )
    end

    return new_svg.to_xml
  end


  def get_png_data( spoonflower_id )
    location = spoonflower_image_location_from_id( spoonflower_id )
    return get_image_from_web_with_basic_auth( location )
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


  # given SVG as a string, returns a PNG
  def svg_to_png(input, width, height)
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

  # stores the png, using the quilt id in the filename. saves path to file in Quilt database
  def store_png( png, quilt_id )
    path = "#{Rails.root}/app/assets/images/preview_thumbnails/img_" + quilt_id + ".png"

    File.open(path, 'w') {|f| f.write( png ) }

    Quilt.update( quilt_id, preview_thumb_url: path )
  end

end
