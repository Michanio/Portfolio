require 'rails_helper'

RSpec.describe "experiences/index", type: :view do
  before(:each) do
    assign(:experiences, [
      FactoryGirl.create(:experience),
      FactoryGirl.create(:experience)
    ])
  end

  it "renders a list of experiences" do
    render
  end
end
