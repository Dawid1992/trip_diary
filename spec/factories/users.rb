FactoryBot.define do
  factory :user do
    sequence(:email) { |n| "user#{n}@gmail.com" }
    password { 'password' }
    password_confirmation { 'password' }
    name {"John Smith"}
    uid {'1111111111111111111'}
  end
end
