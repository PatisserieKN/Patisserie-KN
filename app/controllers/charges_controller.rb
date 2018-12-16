class ChargesController < ApplicationController
  def new
    if user_signed_in?
      @order = Order.create(user_id: current_user.id)

      # Tranfer items from user to order
      current_user.items.each do |item|
        item.buyable = @order
        item.save
      end
      @order.save

    end
  end

  def create
    # Amount in cents
    @amount = 100

    customer = Stripe::Customer.create(
      :email => params[:stripeEmail],
      :source  => params[:stripeToken]
    )

    charge = Stripe::Charge.create(
      :customer    => customer.id,
      :amount      => @amount,
      :description => 'Rails Stripe customer',
      :currency    => 'usd'
    )

    rescue Stripe::CardError => e
      flash[:error] = e.message
    redirect_to new_charge_path
  end
end
