	class HomesController < ApplicationController
		def latest
			@product = Product.order('created_at DESC')
		end
	end