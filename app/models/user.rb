class User < ApplicationRecord
  before_validation :set_name, on: :create

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  has_many :stores, dependent: :destroy
  has_many :products, :through => :stores, dependent: :destroy

  validates :name, presence: true, length: {maximum:35}
  validates :email, presence: true, length: {maximum:255}
  validates :email, uniqueness: true
  validates :email, format: /\A[a-zA-Z0-9\-_.]+@[a-zA-Z0-9\-_.]+\z/

  private

  def set_name
    self.name = "User №#{rand(999_999)}" if self.name.blank?
  end
end
