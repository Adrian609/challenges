recipes = [
  { title: 'good brussels sprouts' },
  { title: 'bad brussels sprouts' }
]

comments = [
  { body: 'dey aiiiight', recipe_id: 1 },
  { body: 'dey gooood', recipe_id: 1 }
]

recipes.each do |recipe|
  recipe = Recipe.create(recipe)
end

comments.each do |comment|
  comment = Comment.create(comment)
end
