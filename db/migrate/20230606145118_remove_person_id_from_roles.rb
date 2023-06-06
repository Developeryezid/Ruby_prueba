class RemovePersonIdFromRoles < ActiveRecord::Migration[6.1]
  def change
    remove_column :roles, :person_id, :integer
  end
end
