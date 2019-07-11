class MenAccessoriesCategory < ApplicationRecord
	has_many :men_accessories

	def self.pagination_request(page)
    	paginate :per_page => 9, :page => page
	end
end
