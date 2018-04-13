class CreateTransactions < ActiveRecord::Migration[5.2]
  def change
    create_table :transactions do |t|
      t.string :date
      t.string :typeTrans
      t.float :totalTrans

      t.timestamps
    end
  end
end
