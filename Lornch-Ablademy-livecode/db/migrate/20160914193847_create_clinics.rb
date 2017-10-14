class CreateClinics < ActiveRecord::Migration
  def change
    create_table :clinics do |t|
      t.string :name, null: false
      t.string :speaker, null: false
      t.string :description
    end
  end
end
