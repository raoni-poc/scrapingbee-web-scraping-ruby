# you shouldn't need to require these gems but just in case:
# require 'open-uri'
require 'net/http'

url = "https://en.wikipedia.org/wiki/Douglas_Adams"
uri = URI.parse(url)
response = Net::HTTP.get_response(uri)
puts response.body
#=> "\n<!DOCTYPE html>\n<html class=\"client-nojs\" lang=\"en\" dir=\"ltr\">\n<head>\n<meta charset=\"UTF-8\"/>\n<title>Douglas Adams - Wikipedia</title>..."
#
# Note: If the data comes in a json format, you can parse it by adding these two lines:
#
# require 'json'
# JSON.parse(response.body)
#