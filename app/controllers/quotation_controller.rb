class QuotationController < ApplicationController
  def new
  end

  def show
  	@full_name = params[:full_name]
  	@phone_number = params[:phone_number]
  	@email = params[:email]
  	@subject = params[:subject]
  	@message = params[:message]
  end
end
