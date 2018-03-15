class AddTransactionToStore < ActiveRecord::Migration[5.1]
  def change
    add_column :transaction, :store_id, :integer
    add_index :transaction, :store_id
  end
end
