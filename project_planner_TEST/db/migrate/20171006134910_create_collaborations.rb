class CreateCollaborations < ActiveRecord::Migration
  def change
    create_table :collaborations do |t|
      t.belongs_to :user
      t.belongs_to :project
    end
    # add_index :collaborations, [:user_id, :project_id], unique: true
  end
end
