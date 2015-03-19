class Quilt < ActiveRecord::Base
  belongs_to :project_template

  def get_paths
    # TODO: get this to properly return paths from SVG
    doc = Nokogiri::XML(self.svg)
    # return doc.xpath("//path")
    doc["svg"]
  end
end
