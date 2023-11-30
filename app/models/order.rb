class Order < ApplicationRecord
  belongs_to :user

  has_many :carted_products
  has_many :products, through: :carted_products
  # belongs_to :product


  # def subtotal
  #   price * quantity
  # end
  # def tax
  #   subtoal * 0.09
  # end
  # def total
  #   subtotal + tax
  # end
end
