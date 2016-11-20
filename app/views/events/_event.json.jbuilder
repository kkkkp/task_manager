json.extract! event, :id, :title, :content, :time, :created_at, :updated_at
json.url event_url(event, format: :json)