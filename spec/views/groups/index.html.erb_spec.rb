require 'rails_helper'

RSpec.describe 'groups/index', type: :view do
  before(:each) do
    assign(:groups, [
             Group.create!(
               name: 'Name1',
               icon: 'fab fa-500px',
               user_id: 1
             ),
             Group.create!(
               name: 'Name2',
               icon: 'fab fa-accusoft',
               user_id: 1
             )
           ])
  end

  it 'renders a list of groups' do
    render    
    expect(response).to render_template("index")    
    expect(rendered).to match(/Name1/)
    expect(rendered).to match(/fab fa-500px/)
    expect(rendered).to match(/Name2/)
    expect(rendered).to match(/fab fa-accusoft/)    
  end
end
