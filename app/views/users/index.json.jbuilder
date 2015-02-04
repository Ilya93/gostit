json.array!(@users) do |user|
  json.extract! user, :id, :name, :description, :image_url
  json.url user_url(user, format: :json)
end
