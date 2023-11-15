class OrdersController < ApplicationController
  def create
    product = Product.find_by(id: params["product_id"])
    calculated_subtotal = product.price * params["quantity"].to_i
    calculated_tax = calculated_subtotal * 0.09
    calculated_total = calculated_subtotal + calculated_tax
    @order = Order.create(user_id: current_user.id, product_id: params["product_id"],quantity: params["quantity"], subtotal: calculated_subtotal, tax: calculated_tax, total: calculated_total)
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
