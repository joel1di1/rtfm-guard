json.extract! project, :id, :name, :vcs_provider, :vcs_identifier, :webhook_url, :settings, :user_id, :created_at, :updated_at
json.url project_url(project, format: :json)
