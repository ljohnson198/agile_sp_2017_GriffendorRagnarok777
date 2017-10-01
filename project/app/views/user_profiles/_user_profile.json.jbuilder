json.extract! user_profile, :id, :userName, :, :age, :, :gender, :, :streetAddress, :, :City, :, :State, :, :Zip, :, :profilePicUrl, :, :created_at, :updated_at
json.url user_profile_url(user_profile, format: :json)
