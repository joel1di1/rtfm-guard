# frozen_string_literal: true

json.extract! knowledge, :id, :regexp, :user_id, :description, :documentation_link, :impact_level, :solution_hint,
              :path_pattern, :created_at, :updated_at
json.url knowledge_url(knowledge, format: :json)
