require "httparty"
require "nokogiri"

html = HTTParty.get("https://en.wikipedia.org/wiki/Douglas_Adams")
doc = Nokogiri::HTML(html)

# description = doc.css("p").text
# puts description

# puts doc.css("p")[1].children[0]
# puts doc.css("p")[1].children[1]

picture = doc.css("td a img").find{|picture| picture.attributes["alt"].value.include?("Douglas adams portrait cropped.jpg")}.attributes["src"].value
puts picture

# get picture using the XPath
picture = doc.xpath("/html/body/div[3]/div[3]/div[4]/div/table[1]/tbody/tr[2]/td/a/img").find{|picture| picture.attributes["alt"].value.include?("Douglas adams portrait cropped.jpg")}.attributes["src"].value

