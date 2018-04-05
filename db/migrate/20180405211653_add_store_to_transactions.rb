class AddStoreToTransactions < ActiveRecord::Migration[5.1]
  def change
    add_column :transactions, :store_id, :integer
    add_index :transactions, :store_id
  end
end
