require 'rails_helper'

RSpec.describe 'users/index', type: :view do
  fixtures :users
  fixtures :wishlists

  before(:each) do
    assign(:users, [users(:one),users(:two)])
  end

  it 'renders a list of users' do
    render
    assert_select 'tr>td', text: 'carlospaz'.to_s, count: 1
    assert_select 'tr>td', text: 'ramiroroque'.to_s, count: 1
  end
end
