class AddUserIdToUsersGroups < ActiveRecord::Migration[5.0]
  def change
    add_column :users_groups, :user_id, :integer
    add_column :users_groups, :group_id, :integer
  end
end
