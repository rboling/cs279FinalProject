json.array!(@responses) do |response|
  json.extract! response, :before_information, :before_leaning, :after_information, :after_leaning
  json.url response_url(response, format: :json)
end
