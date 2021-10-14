require'nokogiri'
require 'open-uri'

crypto = Nokogiri::HTML(URI.open("https://coinmarketcap.com/all/views/all/"))

names = []

crypto.xpath('//*[@id="__next"]/div[1]/div[2]/div/div[1]/div/div[2]/div[3]/div/table/tbody/tr/td[3]/div').each do |node|
names << node.text
end 

#puts names.inspect


prices = []
crypto.xpath('//*[@id="__next"]/div[1]/div[2]/div/div[1]/div/div[2]/div[3]/div/table/tbody/tr/td[5]/div').each do |node|
prices << node.text
end
#puts prices.inspect


result = Hash[names.zip(prices)]


cryptomonnaies = []
cryptomonnaies << result
puts cryptomonnaies.inspect
