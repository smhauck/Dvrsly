json.extract! user, :id, :username, :active, :password_digest, :display_name, :nickname, :email, :created_at, :updated_at
json.url user_url(user, format: :json)
