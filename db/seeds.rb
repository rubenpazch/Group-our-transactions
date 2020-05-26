# frozen_string_literal: true
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# create defalt user
User.create!(username: "rpazchuspe")

#49.times do |n|
#    username = Faker::Alphanumeric.alpha(number: 10) 
#  User.create!(username: username)
#end

Group.create!(name: Faker::Types.rb_string, icon: "fab fa-500px", user_id:User.find(1).id)
Group.create!(name: Faker::Types.rb_string, icon: "fab fa-accusoft", user_id:User.find(1).id)
#Group.create!(name: Faker::Types.rb_string, icon: "chart-area3", user_id:User.find(2).id)
#Group.create!(name: Faker::Types.rb_string, icon: "chart-area4", user_id:User.find(2).id)
#Group.create!(name: Faker::Types.rb_string, icon: "chart-area5", user_id:User.find(3).id)
#Group.create!(name: Faker::Types.rb_string, icon: "chart-area6", user_id:User.find(3).id)
#Group.create!(name: Faker::Types.rb_string, icon: "chart-area7", user_id:User.find(4).id)
#Group.create!(name: Faker::Types.rb_string, icon: "chart-area8", user_id:User.find(5).id)
#Group.create!(name: Faker::Types.rb_string, icon: "chart-area9", user_id:User.find(6).id)
#Group.create!(name: Faker::Types.rb_string, icon: "chart-area10", user_id:User.find(7).id)

Wishlist.create!(name: Faker::Device.model_name, price: Faker::Number.between(from: 1, to: 100), author_id:User.find(1).id)
Wishlist.create!(name: Faker::Device.model_name, price: Faker::Number.between(from: 1, to: 100), author_id:User.find(1).id)
#Wishlist.create!(name: Faker::Device.model_name, price: Faker::Number.between(from: 1, to: 100), author_id:User.find(1).id)
#Wishlist.create!(name: Faker::Device.model_name, price: Faker::Number.between(from: 1, to: 100), author_id:User.find(1).id)
#Wishlist.create!(name: Faker::Device.model_name, price: Faker::Number.between(from: 1, to: 100), author_id:User.find(2).id)
#Wishlist.create!(name: Faker::Device.model_name, price: Faker::Number.between(from: 1, to: 100), author_id:User.find(2).id)
#Wishlist.create!(name: Faker::Device.model_name, price: Faker::Number.between(from: 1, to: 100), author_id:User.find(2).id)
#Wishlist.create!(name: Faker::Device.model_name, price: Faker::Number.between(from: 1, to: 100), author_id:User.find(2).id)
#Wishlist.create!(name: Faker::Device.model_name, price: Faker::Number.between(from: 1, to: 100), author_id:User.find(2).id)
#Wishlist.create!(name: Faker::Device.model_name, price: Faker::Number.between(from: 1, to: 100), author_id:User.find(3).id)
#Wishlist.create!(name: Faker::Device.model_name, price: Faker::Number.between(from: 1, to: 100), author_id:User.find(3).id)
#Wishlist.create!(name: Faker::Device.model_name, price: Faker::Number.between(from: 1, to: 100), author_id:User.find(3).id)

WishlistsGroup.create!(group_id: Group.find(1).id, wishlist_id: Wishlist.find(1).id)
WishlistsGroup.create!(group_id: Group.find(2).id, wishlist_id: Wishlist.find(2).id)
#WishlistsGroup.create!(group_id: Group.find(1).id, wishlist_id: Wishlist.find(3).id)
#WishlistsGroup.create!(group_id: Group.find(1).id, wishlist_id: Wishlist.find(4).id)

