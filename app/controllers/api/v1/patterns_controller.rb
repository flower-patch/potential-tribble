class Api::V1::PatternsController < ApplicationController

  def get
    pattern = Pattern.new( params[:pattern_id] )

    render json: { link: pattern.get_pattern_link }
  end

  def list
    render json: { links: Dir.glob("#{Rails.root}/app/assets/patterns/*") }
  end

end
