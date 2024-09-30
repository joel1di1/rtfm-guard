FactoryBot.define do
  factory :match do
    pull_request { nil }
    knowledge { nil }
    file_path { "MyString" }
    line_number { 1 }
    code_snippet { "MyText" }
  end
end
