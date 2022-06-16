# Standard Library
require 'open-uri'
require 'json'

data_source = "https://tcgbusfs.blob.core.windows.net/dotapp/youbike/v2/youbike_immediate.json"

sites = JSON.parse(URI.open(data_source).read)

sites.each do |site|
  site_name = site["sna"].sub("YouBike2.0_", "")
  puts "#{site_name} (#{site["sbi"]}) - #{site["aren"]} - #{site["sno"]}"
end