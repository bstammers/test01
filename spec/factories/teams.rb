# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :team do
    name "MyString"
    manager "MyString"
    played 1
    won 1
    drawn 1
    set_won 1
    set_lost 1
    points_for 1
    points_against 1
    sets_percent "9.99"
    points_percent "9.99"
    comp_points 1
  end
end
