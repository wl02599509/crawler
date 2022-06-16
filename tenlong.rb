# require "nokogiri"
# require "open-uri"

# website = "https://www.books.com.tw/web/sys_saletopb/books"
# result = Nokogiri::HTML(URI.open(website))
# books = result.css("li.item h4 a")  

# books.each do |book|
#   puts book.text
# end


# https://statementdog.com/taiex/14-network-communication-industry


require "nokogiri"
require "open-uri"

website = "https://statementdog.com/taiex/14-network-communication-industry"
result = Nokogiri::HTML(URI.open(website))
stocks = result.css("li.industry-stream-item-info i.industry-stream-item-name a")  

puts result
# stocks.each do |stock|
#   puts stock.text
# end