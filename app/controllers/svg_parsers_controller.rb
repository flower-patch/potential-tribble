class SvgParsersController < ApplicationController
  def index
    #WILL NOT BE THE FIRST QUILT's SVG ALWAYS...JUST TESTING

    # @svg_parser = SvgParser.new(Quilt.first.svg)
    f = File.open("#{Rails.root}/app/assets/blocks/test11.svg")
    @svg_parser = SvgParser.new(f.read)
    f.close
    @quilt = Quilt.first

  end

  def test_garbage
    @starting_svg = Quilt.last.svg

    @svg_parser_object = SvgParser.new( @starting_svg )

    # TODO: edit the svg
    @edited_svg = @svg_parser_object.svg.to_xml
  end

  def download_full_res_quilt
    @quilt = params[:quilt]
    send_data(@quilt , :filename => 'quilt.png', :type=>'image/png')
  end

  def download_full_res_quilt_svg
    send_data File.open('/Users/Spoonflower/IronYard/final/potential-tribble/tmp/I_MADE_A_FILE.svg', "rb") {|f| f.read }, :filename => 'I_MADE_A_FILE.svg', :type => 'image/svg+xml'
    # svg = params[:quilt]
    # send_data(svg , :filename => 'quilt.svg', :type=>'image/svg+xml')
  end

  def download_full_res_quilt_png
    svg_data = File.open('/Users/Spoonflower/IronYard/final/potential-tribble/tmp/I_MADE_A_FILE.svg', 'rb') {|f| f.read }

    data_uri = SvgParser.svg_to_png( svg_data, 810, 810 )
    send_data data_uri, :filename => 'I_MADE_A_FILE.png', :type => 'image/png'
  end
end
