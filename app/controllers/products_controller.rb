class ProductsController < ApplicationController
  def new
  	@product = Product.new
  end

  def create
  	if Product.create(product_params)
  		redirect_to root_path
  	end
  end

private
  def product_params
  	params.require(:product).permit!
  end
end
