class CreateStarshipStatuses < ActiveRecord::Migration[5.2]
  def change
    create_table :starship_statuses do |t|
      t.belongs_to :starship, null: false
      t.string :title, null: false
      t.string :start_date, null: false
      t.string :end_date

      t.timestamps
    end
  end
end
