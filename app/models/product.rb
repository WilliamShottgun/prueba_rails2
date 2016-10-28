class Product < ApplicationRecord
  belongs_to :category
  validates :price, presence: true
	before_create :premium 
	
	def premium
		unless self.premium = true
			self.premium = false
		end
	end


end
