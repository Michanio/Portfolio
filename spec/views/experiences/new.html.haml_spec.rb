require 'rails_helper'

RSpec.describe "experiences/new", type: :view do
  before(:each) do
    assign(:experience, FactoryGirl.build(:experience))
  end

  it "renders new experience form" do
    render

    assert_select "form[action=?][method=?]", experiences_path, "post" do
    end
  end
end


    @experience = FactoryGirl.create(:experience)
