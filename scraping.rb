# require "json"
# require "open-uri"

require "httparty"

# url = "https://api.domain.com.au/v1/locations/profiles/15907"
# user_serialized = URI.open(url).read
# property = JSON.parse(user_serialized)

# puts property

your_api_key = "key_b10f136b679325ef3bb41f0e17049c2b"
suburb = "Hawthorn"
state = "VIC"
postcode = "3122"

id_of_suburb_response = HTTParty.get("https://api.domain.com.au/v1/addressLocators?searchLevel=Suburb&suburb=#{suburb}&state=#{state}&postcode=#{postcode}",
  headers: { "X-API-Key": your_api_key }
)

id_of_suburb = id_of_suburb_response[0]["ids"][0]["id"]

price_of_suburb_response = HTTParty.get("https://api.domain.com.au/v1/locations/profiles/#{id_of_suburb}",
  headers: { "X-API-Key": your_api_key }
)

p price_of_suburb_response

p price_of_suburb_response["suburbName"]
p price_of_suburb_response["data"]["renterPercentage"]
p price_of_suburb_response["data"]["mostCommonAgeBracket"]
p price_of_suburb_response["data"]["apartmentsAndUnitsForRent"]
p price_of_suburb_response["data"]["semiDetachedHousesForRent"]
p price_of_suburb_response["data"]["propertyCategories"][0]["bedrooms"]
p price_of_suburb_response["data"]["propertyCategories"][0]["medianRentPrice"]

p price_of_suburb_response["data"]["propertyCategories"][1]["bedrooms"]
p price_of_suburb_response["data"]["propertyCategories"][1]["medianRentPrice"]

p price_of_suburb_response["data"]["propertyCategories"][2]["bedrooms"]
p price_of_suburb_response["data"]["propertyCategories"][2]["medianRentPrice"]

p price_of_suburb_response["data"]["propertyCategories"][3]["bedrooms"]
p price_of_suburb_response["data"]["propertyCategories"][3]["medianRentPrice"]
# Getting back JSON? JSON.parse(response)


# fetch("https://auth.domain.com.au/v1/connect/token", {
#   method: "POST",
#   headers: {"Content-Type": "application/json"},
#   body: JSON.stringify({"email": emailValue, "password": passwordValue})
# })
#   .then(response => response.json())
#   .then((data) => {
#     console.log(data)
#   })
# }
