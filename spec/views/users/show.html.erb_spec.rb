require 'rails_helper'

RSpec.describe 'users/show', type: :view do
  fixtures :users

  before(:each) do
    @user = assign(:user, users(:one))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(//)
  end
end
