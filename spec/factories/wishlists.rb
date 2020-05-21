FactoryBot.define do
  factory :wishlist do
    name { 'wish list x' }
    price { 5 }
    association :author, factory: :user
  end
end
