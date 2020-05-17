class User < ApplicationRecord
  has_many :wishlists, foreign_key: :author_id, dependent: :destroy
  has_many :groups, dependent: :destroy

  validates :username, presence: { message: 'Username must be given' }
  validates :username, length: { in: 6..20, message: 'Username length must be between 6 to 20 characters' }
  validates :username, uniqueness: { message: 'Username already exists' }
  validates :username, format: { with: /\A[a-zA-Z0-9]+\z/, message: 'Username must be alphanumeric' }
end
