# FactoryBot.define do
#  factory :wishlist do
#    name { "wish list x" }
#    price { 5 }
#    association :author, factory: :user
#  end
# end

FactoryBot.define do
  # post factory with a `belongs_to` association for the user
  factory :wishlist do
    name { 'Through the Looking Glass' }
    price { 5 }
    user
  end

  # user factory without associated posts
  factory :user do
    username { 'JohnDoe' }

    # user_with_posts will create post data after the user has been created
    factory :user_with_wishlists do
      # posts_count is declared as a transient attribute and available in
      # attributes on the factory, as well as the callback via the evaluator
      transient do
        wishlists_count { 5 }
      end

      # the after(:create) yields two values; the user instance itself and the
      # evaluator, which stores all values from the factory, including transient
      # attributes; `create_list`'s second argument is the number of records
      # to create and we make sure the user is associated properly to the post
      after(:create) do |user, evaluator|
        create_list(:wishlist, evaluator.wishlists_count, user: user)
      end
    end
  end
end
