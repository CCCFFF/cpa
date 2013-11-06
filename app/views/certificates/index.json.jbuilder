json.array!(@certificates) do |certificate|
  json.extract! certificate, :credit_category, :credit_total, :credit_date, :credit_method
  json.url certificate_url(certificate, format: :json)
end
