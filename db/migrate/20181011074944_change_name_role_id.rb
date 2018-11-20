class ChangeNameRoleId < ActiveRecord::Migration[5.2]
  def change
      add_column :users, :role_id, :string
  end
end
