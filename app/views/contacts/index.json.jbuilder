json.array!(@contacts) do |contact|
  json.extract! contact, :id, :street, :unit, :city, :state, :zip
  json.url contact_url(contact, format: :json)
end
