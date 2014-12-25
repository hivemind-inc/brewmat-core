json.array!(@products) do |product|
  json.extract! product, :id, :price, :name, :image_url, :description
  json.url product_url(product, format: :json)
end
