class AddNameToGroup < ActiveRecord::Migration[5.0]
  def change
    add_column :groups, :name, :string
    add_column :groups, :image, :string
    add_column :groups, :user_id, :integer
  end
end
