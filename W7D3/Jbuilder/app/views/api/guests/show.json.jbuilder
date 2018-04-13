# json.extract! @guest, :name, :age, :favorite_color

json.partial! 'api/guests/guest', guest: @guest
json.gifts do |gift|
  json.array! @guest.gifts, :title, :description
end
