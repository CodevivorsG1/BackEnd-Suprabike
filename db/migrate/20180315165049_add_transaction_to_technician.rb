class AddTransactionToTechnician < ActiveRecord::Migration[5.1]
  def 
    add_column :transaction, :technician_id, :integer
    add_index :transaction, :technician_id

  end
end
