# frozen_string_literal: true

FactoryBot.define do
  factory :knowledge do
    regexp { Faker::Lorem.word }
    author
    description { Faker::Movies::StarWars.quote }
    documentation_link { Faker::Internet.url }
    impact_level { [1, 2, 3, 4, 5].sample }
    solution_hint { Faker::Movies::StarWars.quote }
    path_pattern { Faker::Lorem.word }
  end
end
