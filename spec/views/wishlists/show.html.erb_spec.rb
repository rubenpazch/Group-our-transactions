require 'rails_helper'

RSpec.describe 'wishlists/show', type: :view do
  fixtures :wishlists

  before(:each) do
    @wishlist = assign(:wishlist, wishlists(:one))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/wishlist1/)
    expect(rendered).to match(/5/)
  end
end
