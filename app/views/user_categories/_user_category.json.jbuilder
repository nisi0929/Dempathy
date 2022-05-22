json.extract! user_category, :id, :user_id, :category_id, :created_at, :updated_at
json.url user_category_url(user_category, format: :json)
