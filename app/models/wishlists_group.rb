class WishlistsGroup < ApplicationRecord
  belongs_to :wishlist
  belongs_to :group
end
