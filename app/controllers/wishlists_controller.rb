class WishlistsController < ApplicationController
  before_action :set_wishlist, only: %i[show edit update destroy]

  # GET /wishlists
  # GET /wishlists.json
  def index
    @wishlists = current_user.wishlists_order_recent
  end

  # GET /wishlists/1
  # GET /wishlists/1.json
  def show; end

  # GET /wishlists/new
  def new
    @wishlist = Wishlist.new
    @group = Group.all
  end

  # GET /wishlists/1/edit
  def edit; end

  # POST /wishlists
  # POST /wishlists.json
  def create
    @wishlist = Wishlist.new(wishlist_params)
    @wishlist.author_id = current_user.id
    @groups_ids = params[:wishlist][:group_ids]

    if @wishlist.save
      @groups_ids.each do |g|
        @wishlist.groups << Group.find(g)
      end

      redirect_to wishlists_path, notice: 'Wishlist was successfully created.'
    else
      redirect_to new_wishlist_url, notice: @user.errors[:username].first
    end
  end

  # PATCH/PUT /wishlists/1
  # PATCH/PUT /wishlists/1.json
  def update
    respond_to do |format|
      if @wishlist.update(wishlist_params)
        format.html { redirect_to @wishlist, notice: 'Wishlist was successfully updated.' }
        format.json { render :show, status: :ok, location: @wishlist }
      else
        format.html { render :edit }
        format.json { render json: @wishlist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wishlists/1
  # DELETE /wishlists/1.json
  def destroy
    @wishlist.destroy
    respond_to do |format|
      format.html { redirect_to wishlists_url, notice: 'Wishlist was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_wishlist
    @wishlist = Wishlist.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def wishlist_params
    params.require(:wishlist).permit(:name, :price,
                                     groups_ids: %i[id icon])
  end
end
