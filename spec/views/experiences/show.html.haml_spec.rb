require 'rails_helper'

RSpec.describe "experiences/show", type: :view do
  before(:each) do
    @experience = assign(:experience, FactoryGirl.create(:experience))
  end

  it "renders attributes in <p>" do
    render
  end
end
