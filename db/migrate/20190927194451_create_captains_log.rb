class CreateCaptainsLog < ActiveRecord::Migration[5.2]
  def change
    create_table :captains_logs do |t|
      t.belongs_to :personnel, null: false
      t.string :star_date, null: false
      t.string :message, null: false

      t.timestamps
    end
  end
end
