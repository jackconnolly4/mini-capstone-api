class CategoryProduct < ApplicationRecord
  belongs_to :category, optional: true
  belongs_to :product
end
