# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :player do
    firstname "Fred"
    lastname "Smith"
    username "fsmith"
    email "fred.smith@test.com"
    #password_digest "MyString"
    password "password"
    password_confirmation "password"
    phone "0455 555555"
    avatar ""
    adminflag false
    managerflag false
  end
end
