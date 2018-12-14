json.array! @current_user_to_be_voted_on do |current_user_to_be_voted_on|
  json.id current_user_to_be_voted_on.id
  json.status current_user_to_be_voted_on.status
  json.section current_user_to_be_voted_on.section
  json.description current_user_to_be_voted_on.description
  json.date_proposed current_user_to_be_voted_on.date_proposed
end
