json.array!(@points) do |point|
  json.extract! point, :condition_id, :body, :summary
  json.url point_url(point, format: :json)
end
