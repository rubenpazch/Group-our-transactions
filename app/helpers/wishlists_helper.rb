module WishlistsHelper
  def total_amount_on_external(wishlist)
    sum = 0
    wishlist.each do |w|
      sum += w.price
    end
    sum
  end
end
