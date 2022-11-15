class Product < ApplicationRecord
  has_many :stores
  has_many :users, :through => :stores

  validates :title, presence: true, length: {maximum: 255}
  validates :description, presence: true
  validates :price, presence: true
end
