require 'rails_helper'

RSpec.describe Experience, type: :model do
  it "is invalid without company name" do
    expect(FactoryGirl.build(:experience, company: nil)).to be_invalid
  end
  
  it "is invalid without description" do
    expect(FactoryGirl.build(:experience, description: nil)).to be_invalid
  end
  
  it "is invalid without start date" do
    expect(FactoryGirl.build(:experience, start_date: nil)).to be_invalid
  end
  
  it "is valid vithout end date" do
    expect(FactoryGirl.build(:experience, end_date: nil)).to be_valid
  end
  
  it "is invalid when end date is earlier than start date" do 
    expect(FactoryGirl.build(:experience, start_date: 1.day.ago, end_date: 2.days.ago )).to be_invalid
  end
  
  it "is valid when end date is later than start date" do
    expect(FactoryGirl.build(:experience, start_date: 2.days.ago, end_date: 1.day.ago )).to be_valid
  end
end
