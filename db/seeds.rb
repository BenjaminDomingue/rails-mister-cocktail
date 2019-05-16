# frozen_string_literal: true

Ingredient.destroy_all

Ingredient.create(name: 'lemon')
Ingredient.create(name: 'ice')
Ingredient.create(name: 'mint leaves')
Ingredient.create(name: 'orange juice')
Ingredient.create(name: 'sugar')


Cocktail.create(name: "Sex on the Beach", description: "mix here")
Cocktail.create(name: "Spritz", description: "mix alcool")
