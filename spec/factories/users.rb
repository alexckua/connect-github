FactoryBot.define do
  factory :user do
    nickname { Faker::Internet.username }
    git_token { Faker::Lorem.characters(40) }
  end
end
