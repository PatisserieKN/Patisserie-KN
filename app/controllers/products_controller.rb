class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def create
   if current_user.admin == true
    @product = Product.create(product_params)
    if @product.save
      flash[:success] = "Le produit a bien été créé"
      #@user_mail = User.all
      #@array_of_mail = []
      #@user_mail.each do |f|
      #  @array_of_mail << f.email
      #end  
      ProductMailer.new_product_mail.deliver_now
      
      redirect_to root_url

    else
      flash[:danger] = "Une erreur est survenue, #{@product.errors.messages}"
      redirect_to root_url
    end
   else
    flash[:danger] = "Vous n'avez pas accès à cette section."
    redirect_to root_url
   end
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
    redirect_to root_url
   else
    flash[:danger] = "Vous n'avez pas accès à cette section."
    redirect_to root_url   
   end
  end

  def destroy
   if current_user.admin == true
    @product = Product.find(params[:id])
    @product.destroy
    flash[:success] = "Le produit a bien été supprimé"
    redirect_to root_url
   else
    flash[:danger] = "Vous n'avez pas accès à cette section."
    redirect_to root_url   
   end
  end
  private

  def product_params
    params.require(:product).permit(:name, :description, :price, :category, :cart_id)
  end
end
