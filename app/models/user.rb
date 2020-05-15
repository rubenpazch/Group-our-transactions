class User < ApplicationRecord
    validates :username, presence: { message: 'Username must be given' }
    validates :username, length: { in: 6..16, message: 'Username must be alphanumeric between 6 to 20 characters' }
    validates :username, uniqueness: {message: 'The username already exists'}    
end
