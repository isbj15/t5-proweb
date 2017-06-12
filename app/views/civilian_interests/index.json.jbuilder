json.array!(@civilian_interests) do |civilian_interest|
  json.extract! civilian_interest, :id, :civilian_id, :interest_id
  json.url civilian_interest_url(civilian_interest, format: :json)
end
