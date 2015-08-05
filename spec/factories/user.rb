FactoryGirl.define do
  factory :user do
    firstname "bobby"

    lastname "schmidt"
    email { "#{firstname}@example.com" }
    password '1234maplestreet'

    after(:build) do |user|
      user.items << FactoryGirl.create(:item)
    end
  end
end