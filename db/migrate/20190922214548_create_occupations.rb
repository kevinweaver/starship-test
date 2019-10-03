class CreateOccupations < ActiveRecord::Migration[5.2]
  def change
    create_table :occupations do |t|
      t.belongs_to :personnel, null: false
      t.string :title, null: false
      t.string :start_date, null: false
      t.string :end_date

      t.timestamps
    end
  end
end
