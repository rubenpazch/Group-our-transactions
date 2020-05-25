class PaymentsController < ApplicationController
  before_action :logged_in_user
  before_action :set_group, only: %i[show edit update destroy]
  
  def create
    @payment = Payment.new(payment_params)

    if @payment.save
      @wishlist = Wishlist.find(payment_params[:wishlist_id])
      @wishlist.active = false
      @wishlist.save
      redirect_to wishlists_path, notice: 'Payment was successfully saved.'
    else
      redirect_to wishlists_path, notice: @payment.errors[:name].first
    end
  end

  private

  def set_payment
    @payment = Payment.find(params[:id])
  end

  def payment_params
    params.require(:payment).permit(:price, :transaction_code, :wishlist_id)
  end
end
