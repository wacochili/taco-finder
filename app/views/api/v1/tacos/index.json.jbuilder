json.tacos @tacos do |taco|
	json.name taco.name
	json.price taco.price
	json.description taco.description
	json.authentic_score taco.authentic_score
  json.restaurant_name taco.restaurant.name
  json.phone taco.restaurant.phone
  json.longitude taco.restaurant.longitude
  json.latitude taco.restaurant.latitude
  json.address taco.restaurant.address
  json.taco_id taco.restaurant.taco_id
end