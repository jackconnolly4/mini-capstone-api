class Product < ApplicationRecord
  # validates :name, presence: true
  # validates :name, uniqueness: true
  # validates :name, length: { in: 2..10 }
  # validates :price, presence: true
  # validates :price, numericality: { greater_than: 0 }
  # validates :description, length: {in: 2..450}
  def is_discounted?
    price <= 10
  end
  def tax
    price * 0.09
  end
  def total
    price + tax
  end
  belongs_to :supplier
  # def supplier
  #   Supplier.find_by(id: supplier_id)
  # end

  has_many :images
  # def images
  #   Images.where(product_id: id)
  # end

  # has_many :orders

  has_many :category_products

  has_many :carted_products
  has_many :users, through: :carted_products


  # has_many :categories, through: :category_products

  def categories
    category_products.map do |category_product|
      category_product.category.name
    end
  end
end