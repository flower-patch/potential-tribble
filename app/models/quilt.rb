class Quilt < ActiveRecord::Base
  belongs_to :project_template

  def get_paths_from_svg
    # TODO: get this to properly return paths from SVG
    doc = Nokogiri::XML(self.svg)
    # return doc.xpath("//path")
    return doc.xpath("//g")
  end

end
