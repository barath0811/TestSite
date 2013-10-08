json.array!(@gopis) do |gopi|
  json.extract! gopi, :name
  json.url gopi_url(gopi, format: :json)
end