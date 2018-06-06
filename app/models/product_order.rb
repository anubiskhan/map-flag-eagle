class ProductOrder < ApplicationRecord
  validates_presence_of :price

  belongs_to :order
  belongs_to :product
end
