json.cache! @branch do
  json.partial! @branch
  json.bank do
    json.partial! @bank
  end
end
