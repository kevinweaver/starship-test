class AddPersonnelReferenceToUser < ActiveRecord::Migration[5.2]
  def change
    add_reference :users, :personnel, index: true
  end
end
