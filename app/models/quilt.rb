class Quilt < ActiveRecord::Base
  belongs_to :project_template

  def get_paths
    # TODO: get this to properly return paths from SVG
    doc = Nokogiri::XML(self.svg)
    # return doc.xpath("//path")
    doc["svg"]
  end

  def self.get_spoonflower_images( search_term )
    ids = []
    urls = []

    response = HTTParty.get("http://api.v1.spoonflower.com/design/search?q=#{search_term}",
      {:basic_auth => {:username => "demo",:password => "irondemo"}})

    response
    # response['results'][0]['results'].each do |result|
    #   ids << result['id']
    #   urls << result['thumbnail_url']
    # end

    # return urls
  end

end
