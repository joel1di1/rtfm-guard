FactoryBot.define do
  factory :project do
    name { "MyString" }
    vcs_provider { "MyString" }
    vcs_identifier { "MyString" }
    webhook_url { "MyString" }
    settings { "" }
    user { nil }
  end
end
