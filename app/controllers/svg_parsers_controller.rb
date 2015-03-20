class SvgParsersController < ApplicationController
  def index
    #WILL NOT BE THE FIRST QUILT's SVG ALWAYS...JUST TESTING
    @svg_parser = SvgParser.new(Quilt.first.svg)
  end


end
