json.array!(@user_properties) do |user_property|
  json.extract! user_property, 
  json.url user_property_url(user_property, format: :json)
end