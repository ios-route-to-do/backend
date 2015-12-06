FactoryGirl.define do
  factory :user do
    sequence(:username) { |n| "person#{n}" }
    location 'Palo Alto'
    first_name 'John'
    last_name 'Doe'
    sequence(:email) { |n| "person#{n}@example.com" }
  end
end
