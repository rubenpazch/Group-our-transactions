require 'rails_helper'

RSpec.describe 'users/new', type: :view do
  before(:each) do
    @user = assign(:user, User.new(
                    username: 'MyString'
                  ))
  end

  it 'renders new user form' do
    render

    assert_select 'form[action=?][method=?]', new_user_path(@user), 'post' do
      assert_select 'input[name=?]', 'user[username]'
    end
  end
end
