class QuotationMailer < ApplicationMailer
  default to: -> { [params[:email], "felix2@hotmail.fr"] },
          from: 'no-reply@patisserie-kn.com'

  def new_quotation_mail
  	@full_name = params[:full_name]
  	@phone_number = params[:phone_number]
  	@email = params[:email]
  	@subject = params[:subject]
  	@message = params[:message]
    mail(subject: "Demande de devis ! Patisserie-kn.")
  end
end