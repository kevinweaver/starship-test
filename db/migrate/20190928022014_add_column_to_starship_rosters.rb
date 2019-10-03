class AddColumnToStarshipRosters < ActiveRecord::Migration[5.2]
  def change
    add_column :starship_rosters, :reason, :string
  end
end
