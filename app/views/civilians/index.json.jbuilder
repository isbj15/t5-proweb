json.array!(@civilians) do |civilian|
  json.extract! civilian, :id, :first_name, :last_name, :address, :city
  json.url civilian_url(civilian, format: :json)
end
