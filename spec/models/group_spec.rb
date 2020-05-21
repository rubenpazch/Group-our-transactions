require 'rails_helper'

RSpec.describe Group, type: :model do
  describe ' model test cases ' do
    fixtures :users
    fixtures :wishlists
    fixtures :groups

    context 'validates field' do
      it 'name must be valid' do
        expect(groups(:one)).to be_valid
      end
      it 'name must not be valid' do
        groups(:one).name = nil
        expect(groups(:one)).to_not be_valid
      end

      it 'icon must not be valid' do
        groups(:one).icon = nil
        expect(groups(:one)).to_not be_valid
      end

      it 'validates group name already exists' do
        group_new = Group.new(name: 'Magpies', icon: 'fab fa-500px', user_id: 1)
        group_new.valid?
        expect(group_new.errors[:name]).to include('Group name already exists')
      end
    end

    context 'must include the message' do
      it 'length between 1 to 50 characters' do
        groups(:one).name = ''
        groups(:one).valid?
        expect(groups(:one).errors[:name]).to include('Group name length must be between 1 to 50 characters')
      end      
    end
  end
end
