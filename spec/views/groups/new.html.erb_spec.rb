require 'rails_helper'

RSpec.describe 'groups/new', type: :view do
  before(:each) do
    @group = assign(:group, Group.create!(
                     name: 'MyString',
                     icon: 'MyString',
                     user_id: 1
                   ))
    
  end

  it 'renders new group form' do
    render
    assert_select 'form[action=?][method=?]', new_group_path(@group), 'post' do
      assert_select 'input[name=?]', 'group[name]'
      assert_select 'input[name=?]', 'group[icon]'
      assert_select 'input[name=?]', 'group[user_id]'
    end
  end
end
