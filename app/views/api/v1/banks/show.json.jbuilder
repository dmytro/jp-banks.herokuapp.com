json.cache! @bank do
  json.partial! @bank
  json.branches @bank.branches do |branch|
    json.partial! branch
  end
end
