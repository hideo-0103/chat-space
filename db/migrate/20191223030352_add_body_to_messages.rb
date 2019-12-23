class AddBodyToMessages < ActiveRecord::Migration[5.0]
  def change
    add_column :messages, :body, :text
    add_column :messages, :image, :string
    add_column :messages, :user_id, :integer
    add_column :messages, :group_id, :integer
  end
end
