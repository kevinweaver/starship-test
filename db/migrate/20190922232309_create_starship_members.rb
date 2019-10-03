class CreateStarshipMembers < ActiveRecord::Migration[5.2]
  def change
    create_table :starship_members do |t|
      t.belongs_to :starship, null: false
      t.belongs_to :personnel, null: false
      t.string :start_date, null: false
      t.string :end_date

      t.timestamps
    end
  end
end
