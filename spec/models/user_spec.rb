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
          user2.username=nil
          user2.valid?
          expect(user2.errors[:username]).to include('Username must be given')
        end 

        it 'username must include the message Username must be given ' do 
          user2.username=nil
          user2.valid?
          expect(user2.errors[:username]).to include('Username must be given')
        end 
        
    end
  end
end
