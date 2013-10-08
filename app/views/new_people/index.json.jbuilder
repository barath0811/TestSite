json.array!(@new_people) do |new_person|
  json.extract! new_person, :first, :last
  json.url new_person_url(new_person, format: :json)
end