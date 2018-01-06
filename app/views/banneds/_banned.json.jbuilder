json.extract! banned, :id, :email, :msg, :reason, :created_at, :updated_at
json.url banned_url(banned, format: :json)
