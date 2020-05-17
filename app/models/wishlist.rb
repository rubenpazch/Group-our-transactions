class Wishlist < ApplicationRecord
    has_and_belongs_to_many :groups
    has_many :groups, through: :wishlists_groups

    belongs_to :author, class_name: 'User'

    #has_many :wishlists_groups
    #has_many :groups, -> { distinct }, through: :wishlists_groups
end
