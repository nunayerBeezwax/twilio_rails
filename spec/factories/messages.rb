# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :message do
    body "MyString"
    to "MyString"
    from "MyString"
  end
end
