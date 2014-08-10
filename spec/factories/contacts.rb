# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :contact do
    street "MyString"
    unit "MyString"
    city "MyString"
    state "MyString"
    zip 1
  end
end
