require 'json'
require 'open-uri'

url = 'http://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
ingredients_serialized = open(url).read
ingredients = JSON.parse(ingredients_serialized)
Ingredient.destroy_all

ingredients["drinks"].each do |i|
  name = i["strIngredient1"]
  Ingredient.create(name: name)
end
