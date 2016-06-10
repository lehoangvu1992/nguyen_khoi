class MyProductsController < ApplicationController
  def index
    @product = current_user.products.page(params[:page])
  end
end