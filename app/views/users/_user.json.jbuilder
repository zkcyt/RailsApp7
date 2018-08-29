json.extract! user, :id, :sitename, :account_id, :intro, :created_at, :updated_at
json.url user_url(user, format: :json)
