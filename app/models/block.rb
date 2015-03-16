class Block

  def getXML
    xml = ""

    File.open("#{Rails.root}/app/assets/blocks/test.svg") do |f|
      xml += f.read
    end

    return xml
  end
end
