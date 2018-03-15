class CreateTransactions < ActiveRecord::Migration[5.1]
  def change
    create_table :transactions do |t|
      t.string :date_transaction
      t.string :type_transaction
      t.float :total_transaction

      t.timestamps
    end
  end
end
