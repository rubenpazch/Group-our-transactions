require 'rails_helper'

RSpec.describe User, type: :model do
  describe ' User rspec test cases ' do
    let(:user1) { FactoryBot.create :user }
    let(:user2) { FactoryBot.create :user }
    let(:user3) { FactoryBot.create :user }

    context 'validation for model' do
      it 'username must be valid' do
        expect(user1).to be_valid
      end

      it 'username must not be valid' do
        user1.username = nil
        expect(user1).to_not be_valid
      end

      it 'username must include the message Username must be given ' do
        user2.username = nil
        user2.valid?
        expect(user2.errors[:username]).to include('Username must be given')
      end

      it 'username must include the message Username length between 6 to 20 characters' do
        user3.username = '123'
        user3.valid?
        expect(user3.errors[:username]).to include('Username length must be between 6 to 20 characters')
      end
    end
    context 'validation for model' do
      it 'username must include the message Username length between 6 to 20 characters' do
        user3.username = '123abcgjhasjdhasjkdhasjdkhasjdkhasdjkas'
        user3.valid?
        expect(user3.errors[:username]).to include('Username length must be between 6 to 20 characters')
      end

      it 'username must include the message username already exists' do
        User.create(username: 'rpazchuspe')
        user_new = User.new(username: 'rpazchuspe')
        user_new.valid?
        expect(user_new.errors[:username]).to include('Username already exists')
      end

      it 'username must include the message Username must be alphanumeric' do
        user3.username = ' ruben22123123'
        user3.valid?
        expect(user3.errors[:username]).to include('Username must be alphanumeric')
      end
    end
  end
end
