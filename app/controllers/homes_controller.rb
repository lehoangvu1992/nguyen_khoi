	class HomesController < ApplicationController
		def latest
			@post = Post.order('created_at DESC').limit(5)
		end
	end