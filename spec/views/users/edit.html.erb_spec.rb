require 'rails_helper'

RSpec.describe 'users/edit', type: :view do
  fixtures :users

  before(:each) do
    @user = assign(:user, users(:one))
  end

  it 'renders the edit user form' do
    render

    assert_select 'form[action=?][method=?]', user_path(@user), 'post' do
      assert_select 'input[name=?]', 'user[username]'
    end
  end
end
