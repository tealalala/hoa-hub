json.array! @action_by_users do |action_by_user|
  json.id action_by_user.id
  json.category action_by_user.category
  json.description action_by_user.description
  json.status action_by_user.status
  json.date_open action_by_user.date_open
  json.date_closed action_by_user.date_closed
  json.is_architecture action_by_user.is_architecture
  json.is_violation action_by_user.is_violation
  json.is_vote action_by_user.is_vote
  json.user_id action_by_user.user_id
  json.property_address_id action_by_user.property_address_id
  json.bylaw_id action_by_user.bylaw_id
  json.ccr_id action_by_user.ccr_id
end
