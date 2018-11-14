json.array! @association_roles do |association_role|
  json.partial! 'association_role.json.jbuilder', association_role: association_role
end
