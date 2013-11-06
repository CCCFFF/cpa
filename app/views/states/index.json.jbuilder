json.array!(@states) do |state|
  json.extract! state, :period_days, :req_credit_self_study, :req_credit_group_live, :req_credit_group_internet
  json.url state_url(state, format: :json)
end
