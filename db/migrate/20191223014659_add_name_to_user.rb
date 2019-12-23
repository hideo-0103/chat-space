class AddNameToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :name, :string
    add_column :users, :e_mail_address, :string
    add_column :users, :group_id, :integer
  end
end
