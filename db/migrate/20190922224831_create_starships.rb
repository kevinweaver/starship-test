class CreateStarships < ActiveRecord::Migration[5.2]
  def change
    create_table :starships do |t|
      t.string :name, null: false
      t.string :class_name, null: false
      t.string :registry, null: false

      t.timestamps
    end
  end
end
