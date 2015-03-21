class SvgParser
  attr_reader :svg, :paths

  def initialize(svg)
    @svg = Nokogiri::XML(svg)
    @paths = @svg.xpath('//*[contains(@style,"fill")]')
  end

  def all_path_ids
    @paths.map {|p| p[:id]}
  end

  def all_unique_image_ids
    all_ids = @paths.map {|p| p['image-id']}
    all_ids.uniq
  end

  def all_paths_styles_split
    @paths.map {|p| p["style"].split(";")}
  end

  def all_paths_coords_split
    @paths.map {|p| p["d"].split}
  end

  def all_paths_fill_values
    array = all_paths_styles_split
    all_fill_values = []
    array.each do |a|
      all_fills = a.map{|s| s if s.start_with?("fill:")}
      fill_string = all_fills.compact![0]
      fill_value = fill_string.scan(/:(\S*$)/)[0][0]
      all_fill_values << fill_value
    end
    all_fill_values
  end

  def all_paths_coord_pairs
    array = all_paths_coords_split
    all_coord_pairs = []
    array.each do |a|
      inner_array = a[1..-2]
      coords_array = []
      inner_array.each do |i|
        coord_pair = i.split(',').map {|x| x.to_f }
        coords_array << coord_pair
      end
      all_coord_pairs << coords_array
    end
    all_coord_pairs
  end
#gsub time
  # def replace_fabric_urls(image_id, new_url)
  #   selected_paths = @paths.xpath('//*[contains(@image-id, ' + image_id +')]')
  #   selected_paths.each do |p|
  #
  #     replacement_fill = "fill:#{new_url};stroke:#000000;stroke-width:0.99000001;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1"
  #     p["style"] = replacement_fill
  #   end
  #   selected_paths
  # end

  # this works as far as replacing style with what the old fill exactly was
  # def replace_fabric_urls(image_id, new_url)
  #   selected_paths = @paths.xpath('//*[contains(@image-id, ' + image_id +')]')
  #   selected_paths.each do |p|
  #     style_array = p["style"].split(';')
  #     new_array = style_array.map{|s| s if s.start_with?("fill:")}
  #     string = new_array.compact![0]
  #     old_fill = string.scan(/:(\S*$)/)[0][0]
  #     p["style"] = old_fill
  #   end
  #   selected_paths
  # end

  def replace_fabric_urls(image_id, new_url)
    selected_paths = @paths.xpath('//*[contains(@image-id, ' + image_id +')]')
    selected_paths.each do |path|
      style_array = path["style"].split(';')
      fill_index = 0
      fill_value = []
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
    selected_paths
  end

  # WILL NOT BE THE FIRST PATHS IN THE REAL WORLD...JUST TESTING
  def first_path_style_split_up
    @paths.first["style"].split(";")
  end

  def first_path_coords_split_up
    @paths.first["d"].split
  end

  def first_path_fill_as_string
    array = first_path_style_split_up
    # could have done array[0] but this way it doesn't rely on fill being first
    new_array = array.map{|s| s if s.start_with?("fill:")}
    string = new_array.compact![0]
    string.scan(/:(\S*$)/)[0][0]
  end

  def first_path_coords
    # lop off the m at the start and the z at the end
    array = first_path_coords_split_up[1..-2]
    coords_array = []
    array.each do |a|
      coord_pair = a.split(',').map {|x| x.to_f }
      coords_array << coord_pair
    end
    coords_array
  end

end


# What I actually need to get out of this is the fabric ID...where will that be stored?

# irb(main):001:0> "fill:none".scan(/:(\S*$)/)
# => [["none"]]
# irb(main):002:0> "fill:none".scan(/:(\S*$)/)[0]
# => ["none"]
# irb(main):003:0> "fill:none".scan(/:(\S*$)/)[0][0]
# => "none"
# irb(main):004:0>
