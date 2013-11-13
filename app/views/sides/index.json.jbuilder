json.array!(@sides) do |side|
  json.extract! side, :condition_id, :body, :summary
  json.url side_url(side, format: :json)
end
