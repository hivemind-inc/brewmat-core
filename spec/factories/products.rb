# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :product do
    price "9.99"
    name "MyString"
    image_url "MyString"
    description "MyText"
  end
end
