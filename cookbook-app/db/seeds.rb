  #
  #   Recipe.create!(
  #   user_id: 1,
  #   title: "Hand Sandwich",
  #    ingredients: "left hand, right hand",
  #    directions: "put your hands together, Wisconsin!")
  #
  # Recipe.create!(user_id: 1,
  # title: "Cookies",
  #    ingredients: "cookie mix, milk, eggs",
  #    directions: "pour mix into bowl, add milk and eggs, stir well, bake")
  #
  # Recipe.create!(user_id: 1,
  # title: "Egg",
  #    ingredients: "chicken",
  #    directions: "squeeze chicken")
  #
  # Recipe.create!(user_id: 1,
  # title: "Fava Bean side dish",
  #    ingredients: "ice, tap water, 2 lbs fresh fava beans in the pod, 1 tablespoon butter, 1 teaspoon olive oil, 2 garlic cloves",
  #    directions: "boil 4 cups of water, add salt, place fava beans in the boiling water for 5 min, remove fava beans and place in ice water, add seasoning to taste")
  #
  # Recipe.create!(user_id: 1, title: "Lasagna",
  #    ingredients: "noodles, tomato paste, meat, onions, garlic, other stuff",
  #    directions: "layer noodles, add sauce, layer noodles, add meat, layer noodles, add onions, layer noodles, add other stuff, finish with a layer of noodles")
  #
  # Recipe.create!(user_id: 1,
  # title: "Burger",
  #    ingredients: "car, money",
  #    directions: "drive to Mcdonald's, order burger from fiberglass clown, pull up to the window, exchange burger for money")

  Category.create!(name: "delicious")
  Category.create!(name: "disgusting")
  Category.create!(name: "easy")
  Category.create!(name: "carnivorous")

  CategoryRecipe.create!(recipe_id: 11, category_id: 1)
  CategoryRecipe.create!(recipe_id: 11, category_id: 3)
  CategoryRecipe.create!(recipe_id: 11, category_id: 4)
  CategoryRecipe.create!(recipe_id: 12, category_id: 1)
  CategoryRecipe.create!(recipe_id: 13, category_id: 1)
  CategoryRecipe.create!(recipe_id: 13, category_id: 3)
  CategoryRecipe.create!(recipe_id: 13, category_id: 1)
  CategoryRecipe.create!(recipe_id: 14, category_id: 1)
  CategoryRecipe.create!(recipe_id: 15, category_id: 1)
  CategoryRecipe.create!(recipe_id: 15, category_id: 4)
  CategoryRecipe.create!(recipe_id: 16, category_id: 2)
  CategoryRecipe.create!(recipe_id: 16, category_id: 3)
