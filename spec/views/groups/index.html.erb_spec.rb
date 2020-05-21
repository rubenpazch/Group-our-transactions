require 'rails_helper'

RSpec.describe 'groups/index', type: :view do
  before(:each) do
    assign(:groups, [
             Group.create!(
               name: 'Name1',
               icon: 'Icon',
               user_id: 1
             ),
             Group.create!(
               name: 'Name2',
               icon: 'Icon',
               user_id: 1
             )
           ])
  end

  it 'renders a list of groups' do
    render
    assert_select 'tr>td', text: 'Name'.to_s, count: 2
    assert_select 'tr>td', text: 'Icon'.to_s, count: 2
    assert_select 'tr>td', text: nil.to_s, count: 2
  end
end
