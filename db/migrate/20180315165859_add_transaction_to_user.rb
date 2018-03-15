class AddTransactionToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :transaction, :user_id, :integer
    add_index :transaction, :user_id
  end
end
