class User < ApplicationRecord
  has_many :wishlists, foreign_key: :author_id, dependent: :destroy
  has_many :groups, dependent: :destroy

  validates :username, presence: { message: 'Username must be given' },
                       length: { in: 6..20, message: 'Username length must be between 6 to 20 characters' },
                       uniqueness: { message: 'Username already exists' },
                       format: { with: /\A[a-zA-Z0-9]+\z/, message: 'Username must be alphanumeric' }

  def all_total_amount
    wishlists.where(active: true).sum(:price)
  end

  def list_wishlists_join_groups
    new_list = []
    wishlists.includes(:wishlists_groups).each do |t|
      new_list << t unless WishlistsGroup.find_by(wishlist_id: t.id).present?
    end
    new_list
  end

  def wishlists_order_recent
    wishlists.includes(:wishlists_groups).order(created_at: :desc).where(active: true)
  end

  def wishlists_order_ancient
    wishlists.includes(:wishlists_groups).order(:created_at).where(active: true)
  end
end
