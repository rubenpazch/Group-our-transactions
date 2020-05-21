require 'rails_helper'

RSpec.describe 'groups/show', type: :view do
  before(:each) do
    @group = assign(:group, Group.create!(
                              name: 'Name1',
                              icon: 'fab fa-500px',
                              user_id: 1
                            ))
  end

  it 'renders content' do
    render
    expect(rendered).to match(/Name1/)
    expect(rendered).to match(/fab fa-500px/)
    expect(rendered).to match(/1/)
  end
end
