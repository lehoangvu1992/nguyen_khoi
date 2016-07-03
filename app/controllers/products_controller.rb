class ProductsController < ApplicationController

  def new
  	@product = Product.new
  end

  def create
  	@product = Product.new(aritcle_params)
    @product.user = current_user
  	if @product.save
  		redirect_to root_path
  	else
  		render :new
  	end
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    if @product.update(aritcle_params)
      redirect_to root_path
    else
      render :edit
    end 
  end

  def aritcle_params
    params.require(:product).permit(:name, :schematic, :image, :category_id, :type)
  end

  def show
    @product = Product.find(params[:id])
  end

  def delete
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to root_path
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to root_path
  end

end
