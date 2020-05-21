FactoryBot.define do
  factory :group do
    name { Faker::Alphanumeric.alphanumeric(number: 10) }
    icon { Faker::Company.ein }
    user_id { 1 }
  end
end
