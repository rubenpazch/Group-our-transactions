module WishlistsHelper
  def total_amount_on_external(wishlist)
    sum = 0
    wishlist.each do |w|
      sum += w.price
    end
    sum
  end

  private

  def set_wishlist
    @wishlist = Wishlist.find(params[:id])
  end

  def set_group
    @group = Group.find(params[:id])
  end

  def wishlist_params
    params.require(:wishlist).permit(:name, :price,
                                     groups_ids: %i[id icon])
  end
end
