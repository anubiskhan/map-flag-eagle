class Order < ApplicationRecord
  validates_presence_of :total, :user_id

  belongs_to :user

  has_many :product_orders
  has_many :products, through: :product_orders
end
