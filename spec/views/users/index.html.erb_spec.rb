require 'rails_helper'

RSpec.describe 'users/index', type: :view do
  fixtures :users
  fixtures :wishlists

  before(:each) do
    assign(:users, [users(:one), users(:two)])
  end
end
