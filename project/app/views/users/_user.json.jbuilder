json.extract! user, :id, :userName, :firstName, :lastName, :Email, :phone, :password, :created_at, :updated_at
json.url user_url(user, format: :json)
