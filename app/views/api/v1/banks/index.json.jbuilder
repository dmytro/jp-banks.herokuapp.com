json.cache! @banks do
  json.array! @banks do |bank|
    json.partial! bank
  end
end
