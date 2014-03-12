FactoryGirl.define do
  factory :card do
    sequence(:card_name){ |n| "Card#{n}" }
  end
end