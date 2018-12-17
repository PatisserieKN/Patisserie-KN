class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
    session[:product_id] = @product.id
    @item = Item.new
  end

  def new
    if user_signed_in? && current_user.admin == true
      @product = Product.new
    else
      flash[:danger] = "Vous n'avez pas accès à cette section."
      redirect_to root_url
    end
  end

  def edit
    if user_signed_in? && current_user.admin == true
      @product = Product.find(params[:id])
    else
      flash[:danger] = "Vous n'avez pas accès à cette section."
      redirect_to root_url
    end
  end

  def create
    if user_signed_in? && current_user.admin == true
      @product = Product.create(product_params)
      if @product.save
        flash[:success] = "Le produit a bien été créé"
        ProductMailer.new_product_mail.deliver_now
      else
        flash[:danger] = "Une erreur est survenue, #{@product.errors.messages}"
      end
    else
      flash[:danger] = "Vous n'avez pas accès à cette section."
    end
    redirect_to root_url
  end

  def update
    if user_signed_in? && current_user.admin == true
      @product = Product.find(params[:id])
      @product.update(product_params)
      flash[:success] = "Le produit a bien été modifié"
    else
      flash[:danger] = "Vous n'avez pas accès à cette section."
    end
    redirect_to root_url
  end

  def destroy
    if user_signed_in? && current_user.admin == true
      @product = Product.find(params[:id])
      @product.destroy
      flash[:success] = "Le produit a bien été supprimé"
    else
      flash[:danger] = "Vous n'avez pas accès à cette section."
    end
    redirect_to root_url
  end

  private

  def product_params
    params.require(:product).permit(:name, :description, :price, :category, :image)
  end
end
