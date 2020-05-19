class Group < ApplicationRecord  
  has_many :wishlists_groups
  has_many :wishlists, -> { distinct }, through: :wishlists_groups, dependent: :destroy
  belongs_to :creator, class_name: 'User', foreign_key: 'user_id'
end
