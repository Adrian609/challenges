class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |comment|
      comment.integer :recipe_id, null: false
      comment.string :body, null: false
    end
  end
end
