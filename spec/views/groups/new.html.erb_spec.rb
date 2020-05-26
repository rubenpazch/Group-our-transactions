require 'rails_helper'

RSpec.describe 'groups/new', type: :view do
  fixtures :groups

  before(:each) do
    @group = assign(:group, groups(:one))
  end

  it 'renders new group form' do
    render
    assert_select 'form[action=?][method=?]', group_path(@group), 'post' do
      assert_select 'input[name=?]', 'group[name]'
    end
  end
end
