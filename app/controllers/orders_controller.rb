class OrdersController < ApplicationController
  def new

  end

  def show
    @order = Order.find(params[:id])
    @map = Map.find(@order.map_id)
  end

  def create
    @order = Order.new(
      total: params[:cost],
      user_id: current_user.id,
      map_id: params[:map_id]
    )
    charge_error = nil
    begin
      customer = Stripe::Customer.create(
        :email => 'example@stripe.com',
        :card  => params[:stripeToken])

      charge = Stripe::Charge.create(
        :customer    => customer.id,
        :amount      => (params[:cost].to_f * 100).floor,
        :description => 'Rails Stripe customer',
        :currency    => 'usd')

    rescue Stripe::CardError => e
      charge_error = e.message
    end
    if charge_error
      flash[:error] = charge_error
      render :new
    else
      @order.save
      redirect_to order_path(@order)
    end
  end
end
