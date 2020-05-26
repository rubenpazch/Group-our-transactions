require 'rails_helper'

RSpec.describe 'groups/edit', type: :view do
  fixtures :groups

  before(:each) do
    @group = assign(:group, groups(:one))
  end

  it 'renders the edit group form' do
    render
    assert_select 'form[action=?][method=?]', group_path(@group), 'post' do
      assert_select 'input[name=?]', 'group[name]'
    end
  end

  it 'renders content' do
    render
    expect(rendered).to match(/Magpies/)
    expect(rendered).to match(/fab fa-500px/)
    expect(rendered).to match(/1/)
  end
end
