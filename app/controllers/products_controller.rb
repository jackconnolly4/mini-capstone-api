class ProductsController < ApplicationController
  def all_products
    @products = Product.all
    render :index
  end
  def one_product
    @product = Product.find_by(id: params["id"])
    render :show
  end
  # def second_product
  #   @product = Product.second
  #   render :show
  # end
  # def third_product
  #   @product = Product.third
  #   render :show
  # end
end
