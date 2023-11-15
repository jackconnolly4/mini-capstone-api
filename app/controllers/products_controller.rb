class ProductsController < ApplicationController
  def index
    @products = Product.all
    render :index
    pp current_user
  end

  def show
    @product = Product.find_by(id: params["id"])
    render :show
  end
  def create 
    @product = Product.new(name: params["name"], price: params["price"],  description: params["description"], supplier_id: params["supplier_id"])
    @product.save
    if @product.valid?
    render :show
    else  
      render json: { errors: @product.errors.full_messages }, status: :unprocessable_entity
    end
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
