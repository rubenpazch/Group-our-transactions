class Wishlist < ApplicationRecord
  has_many :wishlists_groups, dependent: :destroy
  has_many :groups, -> { distinct }, through: :wishlists_groups
  belongs_to :author, class_name: 'User'

  def icons?
    if wishlists_groups.present?
      true
    else
      false
    end
  end
end
