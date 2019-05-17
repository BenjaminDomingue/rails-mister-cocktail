# frozen_string_literal: true

Ingredient.destroy_all

Ingredient.create(name: 'lemon')
Ingredient.create(name: 'ice')
Ingredient.create(name: 'mint leaves')
Ingredient.create(name: 'orange juice')
Ingredient.create(name: 'sugar')

Cocktail.create(name: "Sex on the Beach", description: "mix here", url: "https://drivito0.imgix.drizly.com/8e755b2063da8411/71e629a4cb87/SexOnTheBeach.png?auto=format%2Ccompress&dpr=2&fm=jpeg&q=30&w=375")
Cocktail.create(name: "Spritz", description: "mix alcool", url: "https://cdn.diffords.com/contrib/stock-images/2018/1/34/2018af5d9ac30a3836c1449fd20d21616bba.jpg")
