json.array! @ccrs do |ccr|
  json.partial! 'ccr.json.jbuilder', ccr: ccr
end
