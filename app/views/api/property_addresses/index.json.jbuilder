json.array! @property_addresses do |property_address|
  json.partial! 'property_address.json.jbuilder', property_address: property_address
end
