class CreateRecipes < ActiveRecord::Migration[5.1]
  def change
    create_table :recipes do |recipe|
      recipe.string :title
    end
  end
end
