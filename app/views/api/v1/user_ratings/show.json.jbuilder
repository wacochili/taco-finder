json.id @taco.id
json.user_ratings @taco.user_ratings do |user_rating|
  json.taste_rating user_rating.taste_rating
  json.heat_rating user_rating.heat_rating
end