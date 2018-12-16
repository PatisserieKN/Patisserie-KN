class ChargesController < ApplicationController
  def new
    if user_signed_in?
      global_price = 0
      current_user.items.each do |item|
        global_price += item.price
      end
      @order = Order.create(user_id: current_user.id, global_price: global_price, paid: true)
    end
  end

  def create
    @order = Order.last

    # Transfer item from user to order
    current_user.items.each do |item|
      item.update(buyable: @order)
    end

    customer = Stripe::Customer.create(
      :email => params[:stripeEmail],
      :source  => params[:stripeToken]
    )

    charge = Stripe::Charge.create(
      :customer    => customer.id,
      :amount      => @order.global_price.to_i*100,
      :description => 'Patisserie KN',
      :currency    => 'eur'
    )

    rescue Stripe::CardError => e
      flash[:error] = e.message

    flash[:succes] = "Votre commande a bien été prise en compte. Vous pouvez la retrouver dans votre profil"
    redirect_to new_charge_path
  end
end
