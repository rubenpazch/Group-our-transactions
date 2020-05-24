FactoryBot.define do
  factory :payment do
    price { 1 }
    transaction { 'MyString' }
    wishlist { nil }
  end
end
