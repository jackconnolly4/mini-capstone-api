class ProductsController < ApplicationController
  def index
    @products = Product.all
    render json: @products
  end

  def show
    product = Product.find_by(id: params["id"])
    render :show
  end
  def create 
    @product = Product.new(name: params["name"], price: params["price"],  description: params["description"])
    @product.save
    render :show
  end
  def update
    @product = Product.find_by(id: params["id"])
    @product.update(
      name: params["name"] || @product.name,
      price: params["price"] || @product.price, 
      description: params["description"] || @product.description)
      render :show
  end
  def destroy
    @product = Product.find_by(id: params["id"])
    @product.destroy
    render json:{message: "File was deleted"}
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
