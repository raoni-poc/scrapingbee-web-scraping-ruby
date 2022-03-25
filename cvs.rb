require 'csv'

# Once you've successfully scraped the website, you can save it as a CSV list, which can be used in Excel or integrated into e.g. a mailing platform. It is a popular use case for web scraping. In order to implement this feature, you will use the csv gem.
#
# 1) In the same folder, create a separate data.csv file.
# 2) csv works best with arrays so create a data_array variable and define it as an empty array.
# 3) Push the data to the array.
# 4) Add the array to the csv file.
# 5) Run the scraper and check your data.csv file.

html = open("https://en.wikipedia.org/wiki/Douglas_Adams")
doc = Nokogiri::HTML(html)

data_arr = []
description = doc.css("p").text.split("\n").find{|e| e.length > 0}
picture = doc.css("td a img").find{|picture| picture.attributes["alt"].value.include?("Douglas adams portrait cropped.jpg")}.attributes["src"].value

data_arr.push([description, picture])

CSV.open('data.csv', "w") do |csv|
  csv << data
end
