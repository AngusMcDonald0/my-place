require "httparty"

class FetchPriceService
  def initialize(property)
    @property = property
  end

  def call
    suburb = "Mitcham"
    state = "VIC"
    postcode = "3132"

    id_of_suburb_response = HTTParty.get("https://api.domain.com.au/v1/addressLocators?searchLevel=Suburb&suburb=#{suburb}&state=#{state}&postcode=#{postcode}",
      headers: { "X-API-Key": ENV["DOMAIN_API_KEY"] }
    )
    id_of_suburb = id_of_suburb_response[0]["ids"][0]["id"]

    price_of_suburb_response = HTTParty.get("https://api.domain.com.au/v1/locations/profiles/#{id_of_suburb}",
      headers: { "X-API-Key": ENV["DOMAIN_API_KEY"] }
    )

    p price_of_suburb_response["suburbName"]
    p price_of_suburb_response["data"]["apartmentsAndUnitsForRent"]

    # 2 bedroom
    p price_of_suburb_response["data"]["propertyCategories"][0]["bedrooms"]
    p price_of_suburb_response["data"]["propertyCategories"][0]["medianRentPrice"]
    # 3 bedroom
    p price_of_suburb_response["data"]["propertyCategories"][1]["bedrooms"]
    p price_of_suburb_response["data"]["propertyCategories"][1]["medianRentPrice"]
    # 4 bedroom
    p price_of_suburb_response["data"]["propertyCategories"][2]["bedrooms"]
    p price_of_suburb_response["data"]["propertyCategories"][2]["medianRentPrice"]
    # 4 bedroom
    p price_of_suburb_response["data"]["propertyCategories"][3]["bedrooms"]
    p price_of_suburb_response["data"]["propertyCategories"][3]["medianRentPrice"]

    #Houses
  end
end
