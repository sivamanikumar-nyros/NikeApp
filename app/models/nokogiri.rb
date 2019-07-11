#**********************  men_shoe_categories  ******************************

# require 'nokogiri'
# require 'rest-client'
# require 'pry'

# html  =  RestClient.get('https://store.nike.com/us/en_us/pw/mens-bags-backpacks/7puZof2')
# doc = Nokogiri::HTML.parse(html)

# products_name = doc.css('.exp-left-nav-category-list')

#  binding.pry
# products_name.each do |product|
# 	p product.css('a').text
# end


# require 'nokogiri'
# require 'rest-client'
# require 'pry'

# html  =  RestClient.get('https://store.nike.com/us/en_us/pw/mens-accessories-equipment/7puZobv?ipp=120')
# doc = Nokogiri::HTML.parse(html)

# products_price = doc.css('.product-price')

# # binding.pry
# products_price.each do |product|
# 	p product.css('span.local').text
# end



# https://store.nike.com/in/en_gb/pw/mens-clothing/1mdZ7pu?ipp=120





require 'nokogiri'
require 'rest-client'
require 'pry'

html  =  RestClient.get('https://store.nike.com/in/en_gb/pw/mens-track-field-shoes/7puZ9yoZoi3')
doc = Nokogiri::HTML.parse(html)

products_name = doc.css('.grid-item-image-wrapper a img')

# binding.pry
products_name.each do |product|
	puts product.attributes['src'].value
end




#***************** open_http': 403 Forbidden (OpenURI::HTTPError) *******************************


# PAGE = "https://store.nike.com/us/en_us/pw/mens-bags-backpacks/7puZof2"
# require 'nokogiri'
# require 'open-uri'
# html = Nokogiri.HTML(open(PAGE))
# src  = html.at('.grid-item-image-wrapper img')['src']
# File.open("foo.png", "wb") do |f|
#    binding.pry
#   f.write(open(src).read)
# end
