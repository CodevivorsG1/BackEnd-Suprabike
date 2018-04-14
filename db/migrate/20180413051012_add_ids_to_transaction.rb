class AddIdsToTransaction < ActiveRecord::Migration[5.1]
  def change
    add_column :transactions, :user_id, :integer
    add_index :transactions, :user_id
    add_column :transactions, :store_id, :integer
    add_index :transactions, :store_id
  end
end
