class SvgParser
  attr_reader :svg, :paths

  def initialize(svg)
    @svg = Nokogiri::XML(svg)
    @paths = @svg.xpath('//*[contains(@style,"fill")]')
  end

  def all_path_ids
    @paths.map {|p| p[:id]}
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
