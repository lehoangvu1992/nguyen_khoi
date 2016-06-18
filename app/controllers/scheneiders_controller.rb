class ScheneidersController < ApplicationController
	def index
		@product = Product.where(category_id: 1)
	end
end