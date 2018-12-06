json.array! @action_by_users do |action_by_user|
  json.partial! 'action_by_user.json.jbuilder', action_by_user: action_by_user
end
