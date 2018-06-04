class OrdersController < ApplicationController
  def new
    @current_map = current_map
    @order = Order.new
  end
end
