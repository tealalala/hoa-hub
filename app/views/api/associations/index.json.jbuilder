json.array! @associations do |association|
  json.partial! 'association.json.jbuilder', association: association
end
