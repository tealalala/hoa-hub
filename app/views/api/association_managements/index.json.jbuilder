json.array! @association_management__managements do |association_management|
  json.partial! 'association_management.json.jbuilder', association_management: association_management
end
