require "httparty"

class FetchPriceService
  def initialize(property)
    @property = property
  end

  def call
    suburb = @property.address.split(",")[1].strip
    state = @property.address.split(",")[2].strip
    postcode = @property.address.split(",")[3].strip


    id_of_suburb_response = HTTParty.get("https://api.domain.com.au/v1/addressLocators?searchLevel=Suburb&suburb=#{suburb}&state=#{state}&postcode=#{postcode}",
      headers: { "X-API-Key": ENV["DOMAIN_API_KEY"] }
    )
    id_of_suburb = id_of_suburb_response[0]["ids"][0]["id"]

    suburb_overview = HTTParty.get("https://api.domain.com.au/v1/locations/profiles/#{id_of_suburb}",
      headers: { "X-API-Key": ENV["DOMAIN_API_KEY"] }
    )
  end
end
