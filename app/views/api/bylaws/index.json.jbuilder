json.array! @bylaws do |bylaw|
  json.partial! 'bylaw.json.jbuilder', bylaw: bylaw
end
