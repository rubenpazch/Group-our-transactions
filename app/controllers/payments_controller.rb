class PaymentsController < ApplicationController
  before_action :logged_in_user
  before_action :set_group, only: %i[show edit update destroy]

  # GET /groups
  # GET /groups.json
  def index
    @groups = Group.all
  end

  # GET /groups/1
  # GET /groups/1.json
  def show; end

  # GET /groups/new
  def new
    @group = Group.new
  end

  # GET /groups/1/edit
  def edit; end

  # POST /groups
  # POST /groups.json
  def create
    @payment = Payment.new(payment_params)

    if @payment.save
      @wishlist = Wishlist.find(payment_params[:wishlist_id])
      @wishlist.active = false
      @wishlist.save
      redirect_to wishlists_path, notice: 'Group was successfully created.'
    else
      redirect_to wishlists_path, notice: @payment.errors[:name].first
    end
  end

  # PATCH/PUT /groups/1
  # PATCH/PUT /groups/1.json
  def update
    @group.icon = params[:icon]
    if @group.update(group_params)
      redirect_to groups_path, notice: 'Group was successfully updated.'
    else
      redirect_to edit_group_url, notice: @group.errors[:name].first
    end
  end

  # DELETE /groups/1
  # DELETE /groups/1.json
  def destroy
    @group.destroy
    respond_to do |format|
      format.html { redirect_to groups_url, notice: 'Group was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_payment
    @payment = Payment.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def payment_params
    params.require(:payment).permit(:price, :transaction_code, :wishlist_id)
  end
end
