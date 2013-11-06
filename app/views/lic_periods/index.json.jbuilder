json.array!(@lic_periods) do |lic_period|
  json.extract! lic_period, :initial_date, :renewal_date, :state_id, :user_id, :credit_self_study_total, :credit_group_live_total, :credit_group_internet_total
  json.url lic_period_url(lic_period, format: :json)
end
