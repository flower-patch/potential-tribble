class Api::V1::BlocksController < ApplicationController

  def get
    svg = Block.new( params[:block_id] )

    render xml: svg.getXML
  end

  def list
    render json: { links: Dir.glob("#{Rails.root}/app/assets/blocks/*") }
  end

end
