require'nokogiri'
require'open-uri'
inthone = Nokogiri::HTML(URI.open("")) 

def recup
inthone.xpath('//html/body/div/main/section[2]/div/table/tbody/tr[4]/td[2]').each do |email|
  puts email.text
end 
end

