FactoryBot.define do
  factory :administrator do
    sequence(:email) { |n| "admin#{n}@example.com" }
    password { "wp" }
    suspended { false }
  end
end
