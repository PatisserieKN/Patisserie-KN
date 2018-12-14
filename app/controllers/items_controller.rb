class ItemsController < ApplicationController
  def index
  end

  def show
  end

  def new
  end

  def edit
  end

  def create
    @item = Item.new(item_params)
    @item.title = session[:title_item]
    session[:title_item] = nil
    if user_signed_in?
      @item.price = @item.quantity * session[:unit_price].to_f
      session[:unit_price] = nil
      @item.comment = nil if @item.comment.blank?
      cart = current_user.cart || Cart.create(user_id: current_user.id)
      @item.cart_id = cart.id
      if @item.save
        flash[:info] = 'Votre article a été ajouté au panier'
        redirect_to patisserie_path
      else
        flash[:danger] = "Votre article n'a pas pu être ajouté au panier"
        p @item.errors.messages
        p "nok"
      end
    else
      flash[:info] = 'Vous devez être connecté pour ajouter un produit dans votre panier.'
      redirect_back(fallback_location: root_path)
    end
  end

  def update
  end

  def destroy
  end

  private

    def item_params
      params.require(:item).permit(:title, :personalization, :quantity, :comment)
    end
end
