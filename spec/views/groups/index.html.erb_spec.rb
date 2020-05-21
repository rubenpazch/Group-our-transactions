require 'rails_helper'

RSpec.describe 'groups/index', type: :view do
  fixtures :groups

  before(:each) do
    assign(:groups, [groups(:one), groups(:two)])
  end

  it 'renders a list of groups' do
    render
    expect(response).to render_template('index')
    expect(rendered).to match(/Magpies/)
    expect(rendered).to match(/fab fa-500px/)
    expect(rendered).to match(/Cocodrilles/)
    expect(rendered).to match(/fab fa-accusoft/)
  end
end
