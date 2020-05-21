require 'rails_helper'

RSpec.describe 'wishlists/edit', type: :view do
  fixtures :wishlists
  fixtures :groups
  
  before(:each) do    
    @group =  assign(:group, [groups(:one),groups(:two)])
    @group_added =  assign(:group, [])
    @wishlist =  assign(:wishlist, wishlists(:one))
  end

  it 'renders the edit wishlist form' do
    render

    assert_select 'form[action=?][method=?]', wishlist_path(@wishlist), 'post' do
      assert_select 'input[name=?]', 'wishlist[name]'

      assert_select 'input[name=?]', 'wishlist[price]'
    end
  end
end
