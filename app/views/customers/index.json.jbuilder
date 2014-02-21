json.array!(@customers) do |customer|
  json.extract! customer, :id, :name, :last_name, :email, :contact_phone, :street, :zip
  json.url customer_url(customer, format: :json)
end
