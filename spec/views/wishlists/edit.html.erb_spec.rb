require 'rails_helper'

RSpec.describe 'wishlists/edit', type: :view do
  before(:each) do
    @wishlist = assign(:wishlist, Wishlist.create!(
                                    name: 'MyString',
                                    price: 1
                                  ))
  end

  it 'renders the edit wishlist form' do
    render

    assert_select 'form[action=?][method=?]', wishlist_path(@wishlist), 'post' do
      assert_select 'input[name=?]', 'wishlist[name]'

      assert_select 'input[name=?]', 'wishlist[price]'
    end
  end
end
