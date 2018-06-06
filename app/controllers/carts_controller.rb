class CartsController < ApplicationController
  def show

  end

  def create
    product = Product.find(params['product_id'])

    @cart.add_product(product.id)
    session[:cart] = @cart.product_list
    redirect_to '/cart'
  end
end
