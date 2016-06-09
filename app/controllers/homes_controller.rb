	class HomesController < ApplicationController
		def latest
			@product = Product.order('created_at DESC').limit(5)
		end
	end