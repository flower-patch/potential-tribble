class Block

  def initialize( block_id )
    @block_id = block_id
  end

  def getXML
    xml = ""

    File.open("#{Rails.root}/app/assets/blocks/test#{@block_id}.svg") do |f|
      xml += f.read
    end

    return xml
  end

  def self.getXML_for_filename( filename )
    xml = ""

    File.open("#{Rails.root}/app/assets/blocks/#{filename}") do |f|
      xml += f.read
    end

    return xml
  end

end
