class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def create
    if current_user.admin == true
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

  def new
    if current_user.admin == true
      @product = Product.new
    else
      flash[:danger] = "Vous n'avez pas accès à cette section."
      redirect_to root_url
    end
  end

  def edit
    if current_user.admin == true
      @product = Product.find(params[:id])
    else
      flash[:danger] = "Vous n'avez pas accès à cette section."
      redirect_to root_url
    end
  end

  def show
    @product = Product.find(params[:id])
  end

  def update
    if current_user.admin == true
      @product = Product.find(params[:id])
      @product.update(product_params)
      flash[:success] = "Le produit a bien été modifié"
    else
      flash[:danger] = "Vous n'avez pas accès à cette section."
    end
    redirect_to root_url
  end

  def destroy
    if current_user.admin == true
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
    params.require(:product).permit(:name, :description, :price, :category, :cart_id, :image)
  end
end
