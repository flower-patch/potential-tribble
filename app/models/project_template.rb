class ProjectTemplate < ActiveRecord::Base
  has_many :quilts

  def self.getXML_for_filename( filename )
    xml = ""

    File.open("#{Rails.root}/app/assets/projects/#{filename}") do |f|
      xml += f.read
    end

    return xml
  end

  def total_number_of_blocks
    self.blocks_across * self.blocks_down
  end
end
