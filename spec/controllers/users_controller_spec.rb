require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  describe ' controller test cases ' do
    fixtures :users

    let(:user1) { users(:one) }
    let(:user2) { users(:two) }
    let(:user) { FactoryBot.create :user }

    before { log_in user }
    before { log_in user }
    before { log_in user2 }

    describe '#index' do
      it 'should return a list of all users' do
        get :index
        expect(assigns(:users).length).to eql(4)
      end
    end

    describe '#show' do
      it 'should return the user with given id' do
        new_user = FactoryBot.create :user
        get :show, params: { id: new_user.id }
        expect(assigns(:user)).to eql(nil)
      end
    end

    describe '#index' do
      subject { get :index }
      it 'render the template' do
        expect(subject).to render_template(:index)
        expect(subject).to render_template('index')
        expect(subject).to render_template('users/index')
      end

      it 'does not render a different template' do
        expect(subject).to_not render_template('users/delete')
      end
    end

    describe '#create' do
      it 'redirects to wishlists_url' do
        new_user = FactoryBot.build :user
        post :create, params: { user: { id: new_user.id, username: new_user.username } }
        expect(response).to redirect_to wishlists_path
      end

      it 'redirects to wishlists_url' do
        new_user = FactoryBot.create :user
        post :create, params: { user: { id: new_user.id, username: new_user.username } }
        expect(response).to redirect_to signup_path
      end
    end
  end
end
