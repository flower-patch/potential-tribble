class UnicornsController < ApplicationController
  def index
    @doc = Nokogiri::XML("<potato><tomato>Dingleberry</tomato></potato>")
    @rects = @doc.xpath("//tomato")
  end
end
