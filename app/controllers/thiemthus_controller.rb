class ThiemthusController < ApplicationController
	def index
		@product = Product.where(category_id: 3)
	end
end