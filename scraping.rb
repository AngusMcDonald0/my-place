# require "open-uri"
# require "nokogiri"
# url = "https://reiv.com.au/market-insights/suburb/mitcham"

# html_file = URI.open(url).read
# html_doc = Nokogiri::HTML(html_file)
# print html_doc


fetch("https://api.domain.com.au/v1/locations/profiles/41352")
  .then(response => response.json())
  .then((data) => {
    console.log(data)
  })
