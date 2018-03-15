class AddImageToTransaction < ActiveRecord::Migration[5.1]
  def change
    add_column :image, :transaction_id, :integer
    add_index :image, :transaction_id
  end
end
