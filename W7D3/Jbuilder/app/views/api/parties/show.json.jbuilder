json.extract! @party, :name, :location
json.guests do |guest|
  json.array! @party.guests, :name
  json.gifts guest.gifts, :title
end
