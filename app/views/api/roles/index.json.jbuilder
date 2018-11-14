json.array! @roles do |role|
  json.partial! 'role.json.jbuilder', role: role
end
