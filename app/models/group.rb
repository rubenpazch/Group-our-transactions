class Group < ApplicationRecord
  
  
  #belongs_to :wishlists, through: :wishlists_groups
  has_many :wishlists_groups
  #has_and_belongs_to_many :wishlists  

  #has_many :projects_groups
  has_many :wishlists, -> { distinct }, through: :wishlists_groups, dependent: :destroy

  #belongs_to :user
  belongs_to :creator, class_name: 'User', foreign_key: 'user_id'
end
