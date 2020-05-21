require 'rails_helper'
RSpec.describe Wishlist, type: :model do
  describe ' model test cases ' do
    fixtures :users
    fixtures :wishlists

    context 'validates field' do
      it 'name and price must be valid' do
        expect(wishlists(:one)).to be_valid
      end
      it 'name must not be valid' do
        wishlists(:one).name = nil
        expect(wishlists(:one)).to_not be_valid
      end

      it 'price must not be valid' do
        wishlists(:one).price = nil
        expect(wishlists(:one)).to_not be_valid
      end

      it 'validates wishlist already exists' do
        wishlist_new = Wishlist.new(name: 'wishlist1', price: 5, author_id: 1)
        wishlist_new.valid?
        expect(wishlist_new.errors[:name]).to include('Name already exists')
      end
    end

    context 'must include the message' do
      it 'length between 6 to 50 characters' do
        wishlists(:one).name = ''
        wishlists(:one).valid?
        expect(wishlists(:one).errors[:name]).to include('Name length must be between 6 to 50 characters')
      end      
      it 'must be numeric' do
        wishlists(:one).price = 'gffgf'
        wishlists(:one).valid?
        expect(wishlists(:one).errors[:price]).to include('Price must be numeric')
      end
    end
  end
end
