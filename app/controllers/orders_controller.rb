class OrdersController < ApplicationController
  def create
    product = Product.find(params["product_id"])
    price = product.price
    subtotal = (price * params["quantity"].to_i)
    @order = Order.create(user_id: current_user.id, product_id: params["product_id"], quantity: params["quantity"], tax: (subtotal * 0.09), total: (subtotal + price))
    if @order.valid?
      render :show
      else  
        render json: { errors: @order.errors.full_messages }, status: :unprocessable_entity
      end
  end
  def show
    @order = Order.find_by(id: params["id"])
    render :show
  end
  def index
    @orders = Order.all
    render :index
  end
end
