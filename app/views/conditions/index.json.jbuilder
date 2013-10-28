json.array!(@conditions) do |condition|
  json.extract! condition, :name
  json.url condition_url(condition, format: :json)
end
