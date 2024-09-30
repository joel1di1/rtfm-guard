# frozen_string_literal: true

FactoryBot.define do
  factory :identity do
    user { nil }
    provider { 'MyString' }
    uid { 'MyString' }
  end
end
