json.array!(@business_alerts) do |business_alert|
  json.extract! business_alert, :id, :date, :title, :detail
  json.url business_alert_url(business_alert, format: :json)
end
