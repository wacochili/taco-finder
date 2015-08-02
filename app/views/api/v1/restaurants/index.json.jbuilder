json.restaurants @restaurants do |restaurant|
  json.name restaurant.name
  json.phone restaurant.phone
  json.longitude restaurant.longitude
  json.latitude restaurant.latitude
  json.address restaurant.address
  json.taco_id restaurant.taco_id

  json.tacos restaurant.tacos do |taco|
  	json.id taco.id
    json.name taco.name
    json.description taco.description
    json.authentic_score taco.authentic_score
  end
end