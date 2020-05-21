require 'rails_helper'

RSpec.describe 'groups/show', type: :view do
  fixtures :groups

  before(:each) do
    @group = assign(:group, groups(:one))
  end

  it 'renders content' do
    render
    expect(rendered).to match(/Magpies/)
    expect(rendered).to match(/fab fa-500px/)
    expect(rendered).to match(/1/)
  end
end
