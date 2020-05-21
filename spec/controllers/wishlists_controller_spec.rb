require 'rails_helper'

RSpec.describe WishlistsController, type: :controller do
  describe ' controller test cases ' do
    fixtures :wishlists
    fixtures :users
    fixtures :groups

    let(:user1) { users(:one) }
    let(:user2) { users(:two) }
    let(:user) { FactoryBot.create :user }
    let(:group1) { groups(:one) }
    let(:wishlist1) { wishlists(:one) }

    before { log_in user }
    before { log_in user }
    before { log_in user2 }

    describe '#index' do
      subject { get :index }
      it 'render the template' do
        expect(subject).to render_template(:index)
        expect(subject).to render_template('index')
        expect(subject).to render_template('wishlists/index')
      end

      it 'does not render a different template' do
        expect(subject).to_not render_template('users/delete')
      end
    end

    describe '#create' do
      it 'redirects to wishlists_url' do
        new_wishlist = FactoryBot.build :wishlist
        post :create, params: {
          wishlist: {
            id: new_wishlist.id,
            name: new_wishlist.name,
            price: new_wishlist.price,
            group_ids: ['1']
          }
        }
        expect(response).to redirect_to wishlists_path
      end

      it 'redirects to new_wishlist_url' do
        new_wishlist = FactoryBot.create :wishlist
        post :create, params: {
          wishlist: {
            id: new_wishlist.id,
            name: new_wishlist.name,
            price: new_wishlist.price,
            group_ids: ['1']
          }
        }
        expect(response).to redirect_to new_wishlist_url
      end
    end
  end
end
