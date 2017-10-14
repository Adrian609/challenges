class CreateSignups < ActiveRecord::Migration
  def change
    create_table :signups do |t|
      t.belongs_to :student
      t.belongs_to :clinic
    end
  end
end
