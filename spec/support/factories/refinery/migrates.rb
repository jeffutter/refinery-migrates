
FactoryGirl.define do
  factory :migrate, :class => Refinery::Migrates::Migrate do
    sequence(:title) { |n| "refinery#{n}" }
  end
end

