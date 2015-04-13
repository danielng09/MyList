json.array!(@posts) do |post|
  json.extract! post, :id, :title, :price, :body
  json.url post_url(post, format: :json)
end
