class SvgParsersController < ApplicationController
  def index

    f = File.open("#{Rails.root}/app/assets/blocks/test12.svg")
    @svg_parser_from_file = SvgParser.new(f.read)
    f.close

    @quilt = Quilt.last
    @svg_parser_from_quilt = SvgParser.new(Quilt.last.svg)

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
end
