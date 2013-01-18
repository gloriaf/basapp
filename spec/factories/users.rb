FactoryGirl.define do
  factory :user do
    username "User"
    email "user@example.com"
    password "12345678"
    password_confirmation "12345678"
    remember_me ""
  end
end