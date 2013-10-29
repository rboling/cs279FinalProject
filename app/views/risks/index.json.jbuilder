json.array!(@risks) do |risk|
  json.extract! risk, :name, :body
  json.url risk_url(risk, format: :json)
end
