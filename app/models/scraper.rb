require 'rubygems'
require 'rest-client' 
require 'nokogiri'
require 'open-uri'
require 'pry'
require 'json'
	

class Scraper

	attr_accessor :parse_page
		
	def initialize
		doc = RestClient.get("https://store.nike.com/in/en_gb/pw/mens-track-field-shoes/7puZ9yoZoi3")
		@parse_page ||= Nokogiri::HTML(doc)
	end

	def get_names
		item_container.css(".product-name").css("p").children.map{ |name| name.text }.compact
	end

	def get_prices
		item_container.css(".product-price").css("span.local").children.map { |price| price.text }.compact
	end

		
	private
	def item_container
		parse_page.css(".grid-item-info")	
		#binding.pry
		# binding.pry
	end

	scraper = Scraper.new
	names= scraper.get_names
	prices = scraper.get_prices
		

	(0...prices.size).each do |index|
		puts "#{names[index]} ,#{prices[index]}"
	end
end

#https://store.nike.com/us/en_us/pw/mens-lifestyle-shoes/7puZoneZoi3

#https://store.nike.com/in/en_gb/pw/mens-running-shoes/7puZ8yzZoi3

#https://store.nike.com/in/en_gb/pw/mens-gym-training-shoes/7puZ9hkZoi3

#https://store.nike.com/in/en_gb/pw/mens-basketball-shoes/7puZ8r1Zoi3

#https://store.nike.com/in/en_gb/pw/mens-football-shoes/7puZ896Zoi3

#https://store.nike.com/in/en_gb/pw/mens-american-football-shoes/7puZbgcZoi3

#https://store.nike.com/in/en_gb/pw/mens-skateboarding-shoes/7puZ9yqZoi3?ipp=65

#https://store.nike.com/in/en_gb/pw/mens-baseball-shoes/7puZbumZoi3

#https://store.nike.com/in/en_gb/pw/mens-tennis-shoes/7puZ8r0Zoi3

#https://store.nike.com/in/en_gb/pw/mens-walking-shoes/7puZ9ypZoi3

#https://store.nike.com/in/en_gb/pw/mens-cricket-shoes/7puZr4gZoi3

#https://store.nike.com/in/en_gb/pw/mens-track-field-shoes/7puZ9yoZoi3

#https://store.nike.com/in/en_gb/pw/mens-nike-pro-compression/1mdZ7puZobn

#https://store.nike.com/in/en_gb/pw/mens-tops-t-shirts/1mdZ7puZobp

#https://store.nike.com/in/en_gb/pw/mens-sweatshirts-hoodies/1mdZ7puZobq

#https://store.nike.com/in/en_gb/pw/mens-jackets-gilets/1mdZ7puZobr

#https://store.nike.com/in/en_gb/pw/mens-trousers-tights/1mdZ7puZobs

#https://store.nike.com/in/en_gb/pw/mens-shorts/1mdZ7puZobt

#https://store.nike.com/us/en_us/pw/mens-bags-backpacks/7puZof2

#https://store.nike.com/us/en_us/pw/mens-balls/7puZof3

#https://store.nike.com/us/en_us/pw/mens-belts/7puZof5

#https://store.nike.com/us/en_us/pw/mens-gloves/7puZof7

#https://store.nike.com/us/en_us/pw/mens-hats-visors-headbands/7puZof1

#https://store.nike.com/us/en_us/pw/mens-apple-watches/7puZof9

#https://store.nike.com/us/en_us/pw/mens-gear/7puZofg

#https://store.nike.com/us/en_us/pw/mens-shin-guards/7puZofb

#https://store.nike.com/us/en_us/pw/mens-sleeves-arm-bands/7puZofd

#https://store.nike.com/us/en_us/pw/mens-sunglasses/7puZofe

#https://store.nike.com/us/en_us/pw/mens-swim-goggles-caps/7puZoff

#https://store.nike.com/us/en_us/pw/mens-training-gym-accessories/7puZof6


# require 'nokogiri'
# require 'open-uri'
# require 'pry'

# # doc = Nokogiri::HTML(open('https://www.yogajournal.com/poses/types'))
# doc = Nokogiri::HTML(open('https://www.google.com'))

# # doc.css('.m-card--header').collect do |pose_type|
# #     pose_type.css('h2').text
# # end 
# doc.css('a.grid-item-image').collect do |pose_link|
#     pose_link.attribute('href').value
# end
# binding.pry






	# require 'rubygems'
	# require 'rest-client' 
	# require 'nokogiri'
	# require 'open-uri'
	# require 'pry'
	# require 'json'
	

	# class Scraper

	# 	attr_accessor :parse_page
		
	# 	def initialize
	# 		# doc = RestClient.get("http://store.nike.com/us/en_us/pw/tops-t-shirts/obp")
	# 		doc = RestClient.get("https://store.nike.com/us/en_us/pw/mens-shoes?ipp=2500")
	# 		@parse_page ||= Nokogiri::HTML(doc)
	# 	end

	# 	def get_names
	# 		item_container.css(".product-name").css("p").children.map{ |name| name.text }.compact
	# 	end

	# 	def get_prices
	# 		item_container.css(".product-price").css("span.local").children.map { |price| price.text }.compact
	# 	end

	# 	def get_images
	# 		item_container.css("grid-item-image-wrapper").css("div").children.map { |image| image.link }.compact
	# 	end
		
	# 	private
	# 	def item_container
	# 		  #binding.pry
	# 		parse_page.css(".grid-item-info")	
	# 	end

	# 	scraper = Scraper.new
	# 	names= scraper.get_names
	# 	prices = scraper.get_prices
	# 	images = scraper.get_images

	# 	(0...prices.size).each do |index|
	# 		# puts "- - - index: #{index + 1} - - - "
	# 		# Product.create(name: names[index], price: prices[index])
	# 		puts "#{names[index]} ,#{prices[index]},#{images[index]}"
	# 	end
	# end

	# json = JSON.pretty_generate(Scraper)
	# File.open("test.json", 'w') { |file| file.write(json) }
	# class Scraper

	# 	attr_accessor :parse_page
		
	# 	def initialize
	# 		doc = RestClient.get("https://store.nike.com/us/en_us/pw/mens-shorts/7puZobt")
	# 		@parse_page ||= Nokogiri::HTML(doc)
	# 	end

	# 	def get_names
	# 		item_container.css(".product-name").css("p").children.map{ |name| name.text }.compact
	# 	end
	# 	def get_prices
	# 		item_container.css(".product-price").css("span.local").children.map { |price| price.text }.compact
	# 	end

	# 	private
	# 	def item_container
	# 		# binding.pry
	# 		parse_page.css(".grid-item-info")	
	# 	end

	# 	scraper = Scraper.new
	# 	names= scraper.get_names
	# 	prices = scraper.get_prices

	# 	(0...prices.size).each do |index|
	# 		puts "***************************************************************************"
	# 		puts "mens-shorts"
	# 		puts "- - - index: #{index + 1} - - - "
	# 		puts "Name: #{names[index]} | price: #{prices[index]}"
	# 	end
	# end


	# class Scraper

	# 	attr_accessor :parse_page
		
	# 	def initialize
	# 		doc = RestClient.get("https://store.nike.com/us/en_us/pw/reviews?ipp=120")
	# 		@parse_page ||= Nokogiri::HTML(doc)
	# 	end

	# 	def get_names
	# 		item_container.css(".product-name").css("p").children.map{ |name| name.text }.compact
	# 	end
	# 	def get_prices
	# 		item_container.css(".product-price").css("span.local").children.map { |price| price.text }.compact
	# 	end

	# 	private
	# 	def item_container
	# 		# binding.pry
	# 		parse_page.css(".grid-item-info")	
	# 	end

	# 	scraper = Scraper.new
	# 	names= scraper.get_names
	# 	prices = scraper.get_prices

	# 	(0...prices.size).each do |index|
	# 		puts "***************************************************************************"
	# 		puts "REVIEWS"
	# 		puts "- - - index: #{index + 1} - - - "
	# 		puts "Name: #{names[index]} | price: #{prices[index]}"
	# 	end
	# end


	# class Scraper

	# 	attr_accessor :parse_page
		
	# 	def initialize
	# 		doc = RestClient.get("https://www.nike.com/kids")
	# 		@parse_page ||= Nokogiri::HTML(doc)
	# 	end

	# 	def get_names
	# 		item_container.css(".product-name").css("p").children.map{ |name| name.text }.compact
	# 	end
	# 	def get_prices
	# 		item_container.css(".product-price").css("span.local").children.map { |price| price.text }.compact
	# 	end

	# 	private
	# 	def item_container
	# 		# binding.pry
	# 		parse_page.css(".grid-item-info")	
	# 	end

	# 	scraper = Scraper.new
	# 	names= scraper.get_names
	# 	prices = scraper.get_prices

	# 	(0...prices.size).each do |index|
	# 		puts "***************************************************************************"
	# 		puts "kids special"
	# 		puts "- - - index: #{index + 1} - - - "
	# 		puts "Name: #{names[index]} | price: #{prices[index]}"
	# 	end
	# end






