json.array!(@services) do |service|
  json.extract! service, :id, :sup1, :sup2, :sup3, :sup4, :sup5, :sup6, :sup7, :sup8, :sup9, :sup10, :pri1, :pri2, :pri3, :pri4, :pri5, :pri6, :pri7, :pri8, :pri9, :pri10, :total_sup, :name, :hours, :hours_price, :margin, :img, :final_price
  json.url service_url(service, format: :json)
end
