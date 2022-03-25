require "httparty"

# What is returned is a HTTParty::Response, an array-like collection of strings representing the html of the page.
#
# Note: It is much easier to work with objects. If the response Content Type is application/json, HTTParty
# will parse the response and return Ruby objects with keys as strings. We can learn about the content type by running
# response.headers["content-type"]. In order to achieve that, we need to add this line to our code:
#
# JSON.parse response, symbolize_names: true

html = HTTParty.get("https://en.wikipedia.org/wiki/Douglas_Adams")
puts html