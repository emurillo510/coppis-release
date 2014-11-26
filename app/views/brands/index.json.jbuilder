json.array!(@brands) do |brand|
  json.extract! brand, :id, :name, :location, :description, :img
  json.url brand_url(brand, format: :json)
end
