json.array!(@subscriptions) do |subscription|
  json.extract! subscription, :email
  json.url subscription_url(subscription, format: :json)
end
