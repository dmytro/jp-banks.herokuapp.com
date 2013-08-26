json.cache! @branches do
  json.array! @branches do |branch|
    json.partial! branch
  end
end
