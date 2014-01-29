json.array!(@users) do |user|
  json.extract! user, :id, :name, :email, :username, :password, :birthday, :avatar, :agree
  json.url user_url(user, format: :json)
end
