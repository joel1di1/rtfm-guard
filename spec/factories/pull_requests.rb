FactoryBot.define do
  factory :pull_request do
    external_id { "MyString" }
    branch { "MyString" }
    status { "MyString" }
    project { nil }
  end
end
