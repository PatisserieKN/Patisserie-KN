class ProductMailer < ApplicationMailer
  default to: -> { User.pluck(:email) },
  		  from: 'no-reply@patisserie-kn.com'

  def new_product_mail
  	mail(subject: "Un nouveau produit est dans la boutique !")
  end
end