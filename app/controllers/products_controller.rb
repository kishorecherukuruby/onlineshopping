class ProductsController < ApplicationController
  def new
  	if params[:id]
  		@category = Category.find params[:id]
  		@product = @category.products.new
  	else
  		@product = Product.new
  	end
  	
  end

  def create
  	if Product.create(product_params)
  		redirect_to root_path
  	end
  end
  def index
  	@products = Product.all
  end

  def category_products
  	@category = Category.find params[:id]
  	@products = @category.products
  end


private
  def product_params
  	params.require(:product).permit!
  end
end
