class QuotationController < ApplicationController
  def new; end

  def show
    @full_name = params[:full_name]
    @phone_number = params[:phone_number]
    @email = params[:email]
    @subject = params[:subject]
    @message = params[:message]
    @array_of_quotation_mail = [@email, "felix2@hotmail.fr"]
    QuotationMailer.with(params).new_quotation_mail.deliver_now
  end
end
