json.array!(@rewards) do |reward|
  json.extract! reward, :name, :body
  json.url reward_url(reward, format: :json)
end
