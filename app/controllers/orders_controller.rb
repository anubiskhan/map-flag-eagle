class OrdersController < ApplicationController
  def new

  end

  def create

    @order = Order.new(
      total: @cart.total_price,
      user_id: current_user.id
    )

  end
end
