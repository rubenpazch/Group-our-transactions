require 'rails_helper'

RSpec.describe User, type: :model do
  describe ' Model.User' do
    fixtures :users
    fixtures :wishlists

    context 'validates field' do
      it 'username must be valid' do
        expect(users(:one)).to be_valid
      end
      it 'username must not be valid' do
        users(:one).username = nil
        expect(users(:one)).to_not be_valid
      end
      it 'validates user already exists' do
        user_new = User.new(username: 'juanperez')
        user_new.valid?
        expect(user_new.errors[:username]).to include('Username already exists')
      end
    end

    context 'username must include the message' do
      it 'must be given ' do
        users(:one).username = nil
        users(:one).valid?
        expect(users(:one).errors[:username]).to include('Username must be given')
      end

      it 'length between 6 to 20 characters' do
        users(:one).username = '123'
        users(:one).valid?
        expect(users(:one).errors[:username]).to include('Username length must be between 6 to 20 characters')
      end
    end

    context 'username must include the message' do
      it 'length between 6 to 20 characters' do
        users(:one).username = '123abcgjhasjdhasjkdhasjdkhasjdkhasdjkas'
        users(:one).valid?
        expect(users(:one).errors[:username]).to include('Username length must be between 6 to 20 characters')
      end
      it 'must be alphanumeric' do
        users(:one).username = ' ruben22123123'
        users(:one).valid?
        expect(users(:one).errors[:username]).to include('Username must be alphanumeric')
      end
    end    

    context 'validates methods' do
      it 'has none to begin with' do
        expect(users(:one).all_total_amount).to eq 15
      end
    end
  end
end
