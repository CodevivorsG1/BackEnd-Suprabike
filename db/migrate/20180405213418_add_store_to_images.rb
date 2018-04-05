class AddStoreToImages < ActiveRecord::Migration[5.1]
  def change
    add_column :images, :store_id, :integer
    add_index :images, :store_id
  end
end
