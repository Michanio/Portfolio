require 'rails_helper'

RSpec.describe "experiences/edit", type: :view do
  before(:each) do
    @experience = assign(:experience, FactoryGirl.create(:experience))
  end

  it "renders the edit experience form" do
    render

    assert_select "form[action=?][method=?]", experience_path(@experience), "post" do
    end
  end
end
FactoryGirl.create(:experience)