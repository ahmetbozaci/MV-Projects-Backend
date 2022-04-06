json.extract! project, :id, :repo_link, :live_link, :picture, :description, :user_id, :created_at, :updated_at
json.url project_url(project, format: :json)
