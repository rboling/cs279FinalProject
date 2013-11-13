json.array!(@user_sessions) do |user_session|
  json.extract! user_session, 
  json.url user_session_url(user_session, format: :json)
end
