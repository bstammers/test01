# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :competition do
    name "MyString"
    points_percent_flag false
    sets_percent_flag false
    mvp_flag false
  end
end
