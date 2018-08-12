json.extract! reply, :id, :opinion_id, :content, :name, :created_at, :updated_at
json.url reply_url(reply, format: :json)
