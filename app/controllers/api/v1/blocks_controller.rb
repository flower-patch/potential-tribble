class Api::V1::BlocksController < ApplicationController

  def index
    svg = Block.new( params[:block_id] )

    render xml: svg.getXML
  end

end
