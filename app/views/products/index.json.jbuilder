json.array!(@products) do |product|
  json.extract! product, :id, :category, :img, :name, :description, :price, :brand, :model, :sn1, :sn2, :bc1, :bc2
  json.url product_url(product, format: :json)
end
