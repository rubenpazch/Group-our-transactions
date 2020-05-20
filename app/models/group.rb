class Group < ApplicationRecord
  has_many :wishlists_groups
  has_many :wishlists, -> { distinct }, through: :wishlists_groups, dependent: :destroy
  belongs_to :creator, class_name: 'User', foreign_key: 'user_id'

  validates :name, presence: { message: 'Group name must be given' }
  validates :icon, presence: { message: 'Icon must be given' }
  validates :name, uniqueness: { message: 'Group name already exists' }
  validates :name, format: { with: /\A[a-zA-Z0-9]+\z/, message: 'Group name must be alphanumeric' }
  validates :name, length: { in: 1..50, message: 'Group name length must be between 1 to 50 characters' }
end
