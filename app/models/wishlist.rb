class Wishlist < ApplicationRecord
  has_many :wishlists_groups, dependent: :destroy
  has_many :groups, -> { distinct }, through: :wishlists_groups, dependent: :destroy
  belongs_to :author, class_name: 'User'

  validates :name,
            presence: { message: 'Name must be given' },
            length: { in: 6..50, message: 'Name length must be between 6 to 50 characters' },
            uniqueness: { message: 'Name already exists' },
            format: { with: /\A[a-zA-Z0-9]+\z/, message: 'Name must be alphanumeric' }

  validates :price,
            presence: { message: 'Price must be given' },
            numericality: { only_integer: true, message: 'Price must be numeric' }

  def icons?
    if wishlists_groups.present?
      true
    else
      false
    end
  end
end
