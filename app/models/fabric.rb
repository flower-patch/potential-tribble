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
end
