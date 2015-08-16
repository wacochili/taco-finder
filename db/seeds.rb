FillingCategory.create!([
  {name: "carne de res/beef"},
  {name: "pollo/chicken"},
  {name: "puerca/pork"},
  {name: "tripita/tripe"},
  {name: "birria/goat"},
  {name: "juego salvaje/wild game"},
  {name: "mariscos/seafood"}
])
IngredientFilling.create!([
  {meat: "pollo/chicken", authenticity: 2, filling_categories_id: 2},
  {meat: "carne asada/grilled beef", authenticity: 5, filling_categories_id: 1},
  {meat: "suadero/sliced fried beef", authenticity: 5, filling_categories_id: 1},
  {meat: "ground beef", authenticity: 1, filling_categories_id: 1},
  {meat: "lengua/beef tongue", authenticity: 5, filling_categories_id: 1},
  {meat: "cachete/beef cheek", authenticity: 5, filling_categories_id: 1},
  {meat: "barbacoa/slow-cooked beef", authenticity: 2, filling_categories_id: 1},
  {meat: "carnitas/chunked pork", authenticity: 4, filling_categories_id: 3},
  {meat: "al pastor/sliced pork", authenticity: 5, filling_categories_id: 3},
  {meat: "tripita/tripe", authenticity: 5, filling_categories_id: 3},
  {meat: "chorizo/pork sausage", authenticity: 3, filling_categories_id: 3},
  {meat: "boar", authenticity: 2, filling_categories_id: 8},
  {meat: "sesos/brains", authenticity: 3, filling_categories_id: 3},
  {meat: "pescado/fish", authenticity: 4, filling_categories_id: 5},
  {meat: "camarones/shrimp", authenticity: 4, filling_categories_id: 5},
  {meat: "lobster", authenticity: 2, filling_categories_id: 5},
  {meat: "crab", authenticity: 2, filling_categories_id: 5},
  {meat: "duck", authenticity: 1, filling_categories_id: 8},
  {meat: "elk", authenticity: 1, filling_categories_id: 8},
  {meat: "ostrich", authenticity: 1, filling_categories_id: 8},
  {meat: "birria/goat", authenticity: 4, filling_categories_id: 7}
])
IngredientGarnish.create!([
  {name: "cabbage", taco_id: nil, authenticity: 4},
  {name: "tomatoes", taco_id: nil, authenticity: 4},
  {name: "onions", taco_id: nil, authenticity: 5},
  {name: "cilantro", taco_id: nil, authenticity: 5},
  {name: "avocado", taco_id: nil, authenticity: 5},
  {name: "lime", taco_id: nil, authenticity: 5},
  {name: "cotija", taco_id: nil, authenticity: 3},
  {name: "queso fresco", taco_id: nil, authenticity: 3},
  {name: "crema", taco_id: nil, authenticity: 3},
  {name: "lettuce", taco_id: nil, authenticity: 1},
  {name: "jack", taco_id: nil, authenticity: 1},
  {name: "cheddar", taco_id: nil, authenticity: 1},
  {name: "pickled onions", taco_id: nil, authenticity: 4}
])
IngredientSalsa.create!([
  {name: "habanero salsa", authenticity: 4},
  {name: "salsa roja", authenticity: 5},
  {name: "pico de gallo", authenticity: 5},
  {name: "salsa cruda", authenticity: 5},
  {name: "salsa verde", authenticity: 5},
  {name: "salsa negra", authenticity: 5},
  {name: "salsa taquera", authenticity: 5},
  {name: "salsa ranchera", authenticity: 5},
  {name: "mole", authenticity: 5},
  {name: "guacamole", authenticity: 5},
  {name: "chipotle salsa", authenticity: 3},
  {name: "tabasco", authenticity: 1}
])
IngredientTortilla.create!([
  {name: "corn", authenticity: 5},
  {name: "hard shell", authenticity: 1},
  {name: "flour", authenticity: 4}
])
