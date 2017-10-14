class CreateCollaborations < ActiveRecord::Migration
  def change
    create_table :collaborations do |t|
      t.belongs_to :user, null: false
      t.belongs_to :project, null: false
    end
  end
end
