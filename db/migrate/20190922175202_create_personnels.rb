class CreatePersonnels < ActiveRecord::Migration[5.2]
  def change
    create_table :personnels do |t|
      t.string :name, null: false
      t.string :gender
      t.string :species, null: false
      t.string :affiliation

      t.timestamps
    end
  end
end
