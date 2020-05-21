class Group < ApplicationRecord
  has_many :wishlists_groups
  has_many :wishlists, -> { distinct }, through: :wishlists_groups, dependent: :destroy
  belongs_to :creator, class_name: 'User', foreign_key: 'user_id'

  validates :name,
            presence: { message: 'Group name must be given' },
            uniqueness: { message: 'Group name already exists' },
            length: { in: 1..50, message: 'Group name length must be between 1 to 50 characters' }

  validates :icon, presence: { message: 'Icon must be given' }
end
