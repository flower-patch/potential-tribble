class SvgParser
  attr_reader :svg, :paths

  # The svg is in fact, the svg.  Right now, in the controller, we are feeding it the test4 svg right from the file.  It also works to pass in Quilt.first.svg.  Eventually, we'll be calling it from somewhere and passing the svg that we want.
  def initialize(svg)
    @svg = Nokogiri::XML(svg)
    @paths = @svg.xpath('//*[contains(@style,"fill")]')
  end

  # In case we needed to know all the unique path ids in the block, this dumps them out
  def all_path_ids
    @paths.map {|p| p[:id]}
  end

  # This looks at all the image-ids (an id we will assign to each fabric design) and returns an array of the unique ones.  Eventually, we'll want a method that loops through each of these unique ids and runs the replace_fabric_url method.
  def all_unique_image_ids
    all_ids = @paths.map {|p| p['image-id']}
    all_ids.uniq
  end

  # There are a bunch more little methods I wrote for getting things out of the svg, but I moved those to the mynotes file...we can bring them back here as needed.  This is the big guy that takes the image-id and a new url and replaces the fill in the svg

  def replace_fabric_urls(image_id, new_url)
    # can't do @paths.each...had to do .xpath to get them without all manner of Nokogiri::Element nastiness.  this finds all paths with the image id we are passing in with the variable (had to break the string for that to work)
    selected_paths = @paths.xpath('//*[contains(@image-id, ' + image_id +')]')
    selected_paths.each do |path|
      # for every path, the "style" is a big old string.  split that puppy up, you'll get an array like ["fill:none", "stroke:#000000", ...]
      style_array = path["style"].split(';')
      fill_index = 0
      # typically, the fill is listed first, but in case it isn't, this finds where it is and notes the position. tried moving it in the file, works great.
      style_array.each_with_index do |style_attribute, index|
        if style_attribute.start_with?("fill:")
          fill_index = index
        end
      end
      # here is where we put the url we want in
      fill_value = ["fill:#{new_url}"]
      # and replace the correct element in the array of style elements
      style_array[fill_index] = fill_value
      # and squish it all back together into a big long string and replace the path's style with the new magic
      new_style = style_array.join(';')
      path["style"] = new_style
    end
    # had this returning selected paths so I could see them...changed it to return the whole changed svg...might not need to return anything, depending on where we call it
    # selected_paths
    @svg
  end


end
