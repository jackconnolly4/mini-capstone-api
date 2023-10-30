class Product < ApplicationRecord
  # validates :name, presence: true
  # validates :name, uniqueness: true
  # validates :name, length: { in: 2..10 }
  # validates :price, presence: true
  # validates :price, numericality: { greater_than: 0 }
  # validates :description, length: {in: 2..450}

  def tax
    price * 0.69
  end
  def total
    price + tax
  end
end