FactoryBot.define do
  factory :wishlist do
    name { Faker::Alphanumeric.alphanumeric(number: 10) }
    price { 5 }
    author_id { 1 }
  end
end
