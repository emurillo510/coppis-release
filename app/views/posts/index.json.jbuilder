json.array!(@posts) do |post|
  json.extract! post, :id, :title, :description, :vote_count
  json.url post_url(post, format: :json)
end
