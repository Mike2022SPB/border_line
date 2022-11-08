class Product < ApplicationRecord
  validates :title, presence: true, length: {maximum: 255}
  validates :description, presence: true
  validates :price, presence: true
end
