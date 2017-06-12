json.array!(@shoes) do |shoe|
  json.extract! shoe, :id, :civilian_id, :size, :brand
  json.url shoe_url(shoe, format: :json)
end
