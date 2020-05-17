require 'rails_helper'

RSpec.describe 'wishlists/new', type: :view do
  before(:each) do
    assign(:wishlist, Wishlist.new(
                        name: 'MyString',
                        price: 1
                      ))
  end

  it 'renders new wishlist form' do
    render

    assert_select 'form[action=?][method=?]', wishlists_path, 'post' do
      assert_select 'input[name=?]', 'wishlist[name]'

      assert_select 'input[name=?]', 'wishlist[price]'
    end
  end
end
