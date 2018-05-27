class Product < ApplicationRecord
  validates_presence_of :name, :description, :price
  validates_uniqueness_of :name
end
