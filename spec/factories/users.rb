FactoryGirl.define do
  factory :user do
    sequence(:email){ |n| "User#{n}" }
  end
end