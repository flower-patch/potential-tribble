class Api::V1::DesignsController < ApplicationController

  def index
    design = Design.new( params[:design_id] )

    render xml: design.get_design_link
  end

end
