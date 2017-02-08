FactoryGirl.define do
  factory :user do
    password "Password"
    email "user@example.com"
    provider "email"
  end
end
