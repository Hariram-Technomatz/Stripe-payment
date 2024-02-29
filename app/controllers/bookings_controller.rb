class BookingsController < ApplicationController
  def create
    @stripe_service = StripeService.new
    @workshop = workshop.find(params[:id])
    @customer = Customer.find_by(email: params[:email])
    unless @customer.present?
      @customer = Customer.create!(customer_params)
    end

    @stripe_customer  = @stripe_service.find_or_create_customer(@customer)
  end

  private

  def customer_params
    params.permit(:full_name, :contact_number, :email)
  end

  def card_token_params
    params.permit(:card_number, :exp_year, :exp_month, :cvv)
  end
end
