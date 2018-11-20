class CreatePermissionUsers < ActiveRecord::Migration[5.2]
  def change
     add_column :users, :id_roles, :string
  end
end
