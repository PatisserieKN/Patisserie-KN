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
    @item.product_id = session[:product_id]
    session[:product_id] = nil
    if user_signed_in?
      @item.price = @item.quantity * @item.product.price
      @item.comment = nil if @item.comment.blank?
      @item.personalization.blank? ? @item.personalization = nil : @item.price += 2.5
      @item.user_id = current_user.id
      if @item.save
        flash[:info] = 'Votre article a été ajouté au panier'
        redirect_to patisserie_path
      else
        error_message = "Votre article n'a pas pu être ajouté au panier pour la/les raison(s) suivante(s) : \n"
        @item.errors.messages.each do |type|
          error_message += "- #{type[0]} :\n"
          type[1].each do |message|
            error_message += "  - #{message}\n"
          end
        end
        flash[:danger] = error_message
        redirect_back(fallback_location: root_path)
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
