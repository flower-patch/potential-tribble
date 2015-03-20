class UnicornsController < ApplicationController
  def index
    @unicorn = Unicorn.new(Quilt.first.svg)
  end


end
