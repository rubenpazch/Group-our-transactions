require 'rails_helper'

RSpec.describe GroupsController, type: :controller do
  describe ' controller test cases ' do
    fixtures :users
    fixtures :groups

    let(:user1) { users(:one) }
    let(:user2) { users(:two) }
    let(:user) { FactoryBot.create :user }
    let(:group1) { groups(:one) }

    before { log_in user }
    before { log_in user }
    before { log_in user2 }

    describe '#index' do
      it 'should return a list of all groups' do
        get :index
        expect(assigns(:groups).length).to eql(3)
      end
    end

    describe '#index' do
      subject { get :index }
      it 'render the template' do
        expect(subject).to render_template(:index)
        expect(subject).to render_template('index')
        expect(subject).to render_template('groups/index')
      end

      it 'does not render a different template' do
        expect(subject).to_not render_template('groups/delete')
      end
    end

    describe '#create' do
      it 'redirects to groups_path' do
        new_group = FactoryBot.build :group
        post :create, params: {
          group: {
            id: new_group.id,
            name: new_group.name,
            icon: new_group.icon,
            user_id: user.id
          },
          icon: 'fab fa-500px'
        }
        expect(response).to redirect_to groups_path
      end

      it 'redirects to new_group_url' do
        new_group = FactoryBot.create :group
        post :create, params: { group: { id: new_group.id, name: new_group.name }, icon: 'fab fa-500px' }
        expect(response).to redirect_to new_group_url
      end
    end

    describe '#update' do
      it 'updates the group and redirects groups_path' do
        new_group = groups(:one)
        patch :update, params: { group: { name: new_group.name }, icon: 'fab fa-500px', id: new_group.id }
        expect(response).to redirect_to groups_path
      end
      it 'updates the group and redirects edit_group_url' do
        new_group = groups(:one)
        patch :update, params: { group: { name: nil }, icon: 'fab fa-500px', id: new_group.id }
        expect(response).to redirect_to edit_group_url
      end
    end
  end
end
