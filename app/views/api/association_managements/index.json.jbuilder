json.array! @association_managements do |association_management|
  json.partial! 'association_management.json.jbuilder', association_management: association_management
end
