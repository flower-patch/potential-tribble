class SvgParser
  attr_reader :svg, :paths

  def initialize(svg)
    @svg = Nokogiri::XML(svg)
    @paths = @svg.xpath('//*[contains(@style,"fill")]')
  end

  def all_path_ids
    @paths.map {|p| p[:id]}
  end

  def first_paths_style_split_up
    @paths.first["style"].split(";")
  end

end
