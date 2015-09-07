require 'faker'
FactoryGirl.define do
  factory :experience do |f|
    f.company { Faker::Company.name }
    f.description { Faker::Company.catch_phrase }
    f.start_date { Faker::Date.between(50.days.ago, 20.days.ago) }
    f.end_date  { Faker::Date.between(19.days.ago, 1.days.ago) }

  end
end