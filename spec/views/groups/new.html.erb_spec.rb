require 'rails_helper'

RSpec.describe 'groups/new', type: :view do

  fixtures :groups

  before(:each) do
    @group = assign(:group, groups(:one))
    
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
