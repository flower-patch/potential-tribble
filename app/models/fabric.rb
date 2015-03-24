class Fabric

  @@use_spoonflower_api = true

  # search by hex value, format FFFFFF (case insensitive. Do not include #). Accepts up to 4 colors and a minimum of 1
  # returns an array of hashes of ids and thumbnail links
  def self.get_spoonflower_fabrics_by_color( color1, color2 = nil, color3 = nil, color4 = nil )
    images = []

    search_string = "http://api.v1.spoonflower.com:80"
    unless @@use_spoonflower_api
      search_string = "https://fakepi.herokuapp.com/api/v1"
    end

    search_string += "/design/search?availability=for_sale&substrate=fabric&color1=#{color1}"

    if color2
      search_string += "color2=%23#{color2}&"
      if color3
        search_string += "color3=%23#{color3}&"
        if color4
          search_string += "color4=%23#{color4}&"
        end
      end
    end

    response = HTTParty.get(search_string,
      {:basic_auth => {:username => ENV['SPOONFLOWER_USERNAME'],:password => ENV['SPOONFLOWER_PASSWORD']}})

    response['results'][0]['results'].each do |result|
      images << {:id => result['id'],
       :thumbnail => result['thumbnail_url']}
    end

    return images
  end

  # returns an array of hashes of ids and thumbnail links
  def self.get_spoonflower_images( search_term )
    images = []

    search_string = "http://api.v1.spoonflower.com"
    unless @@use_spoonflower_api
      search_string = "https://fakepi.herokuapp.com/api/v1"
    end

    search_string += "/design/search?q=#{search_term}"

    response = HTTParty.get(search_string,
      {:basic_auth => {:username => ENV['SPOONFLOWER_USERNAME'],:password => ENV['SPOONFLOWER_PASSWORD']}})

    response['results'][0]['results'].each do |result|
      images << {:id => result['id'],
       :thumbnail => result['thumbnail_url']}
    end

    return images
  end


  # if you just want to download a png, use this
  # def self.svg_to_png(svg, width, height)
  def svg_to_png(svg, width, height)
    svg = RSVG::Handle.new_from_data(svg)
    width   = width  ||=500
    height  = height ||=500
    surface = Cairo::ImageSurface.new(Cairo::FORMAT_ARGB32, width, height)
    context = Cairo::Context.new(surface)
    context.render_rsvg_handle(svg)
    b = StringIO.new
    surface.write_to_png(b)
    return b.string
  end

  # if that png needs to be a data uri, use this
  # def self.encode64( png )
  def encode64( png )
    return Base64.encode64(png)
  end
end
