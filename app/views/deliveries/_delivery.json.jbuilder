json.extract! delivery, :id, :title, :deliver, :by, :packages, :pay, :created_at, :updated_at
json.url delivery_url(delivery, format: :json)
