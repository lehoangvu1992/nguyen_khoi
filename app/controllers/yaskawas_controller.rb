class YaskawasController < ApplicationController
	def index
		@product = Product.where(category_id: 4)
	end
end