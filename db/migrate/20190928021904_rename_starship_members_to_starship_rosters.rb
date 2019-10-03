class RenameStarshipMembersToStarshipRosters < ActiveRecord::Migration[5.2]
  def change
    rename_table :starship_members, :starship_rosters
  end
end
