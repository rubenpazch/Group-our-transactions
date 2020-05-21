require 'rails_helper'

RSpec.describe 'wishlists/index', type: :view do
  fixtures :users
  fixtures :wishlists

  before(:each) do
    assign(:current_user, users(:one))
    assign(:wishlists, [wishlists(:one), wishlists(:two)])
  end

  it 'renders a list of wishlists' do
    render
    assert_select 'tr>td', text: 'wishlist1'.to_s, count: 1
    assert_select 'tr>td', text: 'wishlist3'.to_s, count: 1
  end
end
