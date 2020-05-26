FactoryBot.define do
  factory :payment do
    price { 5 }
    transaction_code { 'MyString' }
    wishlist_id { 1 }
  end
end
