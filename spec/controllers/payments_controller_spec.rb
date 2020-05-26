require 'rails_helper'

RSpec.describe PaymentsController, type: :controller do
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

    describe '#create' do
      it 'redirects to wishlists_url' do
        new_payment = FactoryBot.build :payment
        post :create, params: {
          payment: {
            transaction_code: new_payment.transaction_code,
            price: new_payment.price,
            wishlist_id: wishlist1.id
          }
        }
        expect(response).to redirect_to wishlists_path
      end
    end
  end
end
