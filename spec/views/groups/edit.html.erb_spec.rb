require 'rails_helper'

RSpec.describe 'groups/edit', type: :view do
  before(:each) do
    @group = assign(:group, Group.create!(name: 'Magpies1', icon: 'Magpies1', id: 1))
  end

  it 'renders the edit group form' do
    render
    
    assert_select 'form[action=?][method=?]', edit_group_path(@group), 'post' do
      assert_select 'input[name=?]', 'group[name]'

      assert_select 'input[icon=?]', 'group[icon]'

      assert_select 'input[id=?]', 'group[id]'
    end
  end
end
