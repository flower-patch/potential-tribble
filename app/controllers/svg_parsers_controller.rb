class SvgParsersController < ApplicationController
  def index
    #WILL NOT BE THE FIRST QUILT's SVG ALWAYS...JUST TESTING

    # @svg_parser = SvgParser.new(Quilt.first.svg)
    f = File.open("#{Rails.root}/app/assets/blocks/katie2.svg")
    @svg_parser = SvgParser.new(f.read)
    f.close

  end


end
