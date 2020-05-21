require 'rails_helper'

RSpec.describe 'users/index', type: :view do
  before(:each) do
    assign(:users, [
             User.create!(
               username: 'Username1'
             ),
             User.create!(
               username: 'Username2'
             )
           ])
  end

  it 'renders a list of users' do
    render
    assert_select 'tr>td', text: 'Username1'.to_s, count: 1
    assert_select 'tr>td', text: 'Username2'.to_s, count: 1
  end
end
