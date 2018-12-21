json.extract! direct_message, :id, :title, :message, :created_at, :updated_at
json.url direct_message_url(direct_message, format: :json)
