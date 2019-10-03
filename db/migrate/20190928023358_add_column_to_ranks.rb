class AddColumnToRanks < ActiveRecord::Migration[5.2]
  def change
    add_column :ranks, :weight, :int, null: false 
  end
end
