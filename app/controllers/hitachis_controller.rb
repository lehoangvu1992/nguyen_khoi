class HitachisController < ApplicationController
	def index
		@product = Product.where(category_id: 2)
	end
end