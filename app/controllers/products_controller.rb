class ProductsController < ApplicationController
  def new
    @product = Product.find_by(name: 'Custom Map')
  end
end
