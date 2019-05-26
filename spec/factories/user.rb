require 'faker'

FactoryBot.define do
  factory :user do
    name { Faker::Lorem.characters(8) }
    password { Faker::Internet.password(6) }
    email { Faker::Internet.email }
  end
end