json.array!(@businesses) do |business|
  json.extract! business, :id, :alerts, :date, :title, :detail
  json.url business_url(business, format: :json)
end
