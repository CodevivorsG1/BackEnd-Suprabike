class AddImageToStore < ActiveRecord::Migration[5.1]
  def change
    add_column :store, :image_id, :integer
    add_index :store, :image_id
  end
end
