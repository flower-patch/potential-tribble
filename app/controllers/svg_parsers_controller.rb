class SvgParsersController < ApplicationController
  def index
    #WILL NOT BE THE FIRST QUILT's SVG ALWAYS...JUST TESTING

    # @svg_parser = SvgParser.new(Quilt.first.svg)
    f = File.open("#{Rails.root}/app/assets/blocks/test10.svg")
    @svg_parser = SvgParser.new(f.read)
    f.close

  end

  def test_garbage
    @starting_svg = Quilt.last.svg

    @nokogiri_svg = SvgParser.new( @starting_svg ).svg
    @svg_parser_object = SvgParser.new( @starting_svg )

    # TODO: edit the svg
    @edited_svg = @svg_parser_object.svg.to_xml
  end

end
