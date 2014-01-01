json.array!(@opinions) do |opinion|
  json.extract! opinion, :name, :condition_id
  json.url opinion_url(opinion, format: :json)
end
