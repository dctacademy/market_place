json.extract! profile, :id, :user_id, :bio, :date_of_birth, :created_at, :updated_at
json.url profile_url(profile, format: :json)