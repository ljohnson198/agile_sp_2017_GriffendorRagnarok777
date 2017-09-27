json.extract! user_address, :id, :userName, :streetAddress, :City, :State, :Zip, :created_at, :updated_at
json.url user_address_url(user_address, format: :json)
