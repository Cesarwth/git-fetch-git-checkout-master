class DropRolesUsersJoinTable < ActiveRecord::Migration[5.1]
  def change
    drop_join_table :roles, :users
  end
end
