json.extract! project, :id, :title, :description, :total_budget, :discount, :net_budget, :user_id, :created_at, :updated_at
json.url project_url(project, format: :json)