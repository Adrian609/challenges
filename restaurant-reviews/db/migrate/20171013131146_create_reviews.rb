class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.belongs_to :restaurant
      t.string :rating, null: false
      t.string :body, null: false

      t.timestamps null: false
    end
  end
end
