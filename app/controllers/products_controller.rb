class ProductsController < ApplicationController
  def index
    @products = Product.all
    render json: @products
  end

  def show
    product = Product.find_by(id: params["id"])
    render json: {
      id: product.id,
      name: product.name,
      price: product.price,
      image_url: product.image_url,
      description: product.description,
      created_at: product.created_at,
      updated_at: product.updated_at,
    }
  end
  # def one_product
  #   @product = Product.find_by(id: params["id"])
  #   render :show
  # end
  # def second_product
  #   @product = Product.second
  #   render :show
  # end
  # def third_product
  #   @product = Product.third
  #   render :show
  # end
end
