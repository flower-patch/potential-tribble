class Quilt < ActiveRecord::Base
  belongs_to :project_template

  def get_paths_from_svg
    # TODO: get this to properly return paths from SVG
    doc = Nokogiri::XML(self.svg)
    # return doc.xpath("//path")
    return doc.xpath("//g")
  end

  def total_blocks
    ProjectTemplate.find(self.project_template_id).total_number_of_blocks
  end

  def name_of_my_project
    ProjectTemplate.find(self.project_template_id).name
  end

end
