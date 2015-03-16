class Api::V1::BlocksController < ApplicationController

  def index
    svg = Block.new

    render xml: svg.getXML
  end

end
