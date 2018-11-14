json.array! @groups do |group|
  json.partial! 'group.json.jbuilder', group: group
end
