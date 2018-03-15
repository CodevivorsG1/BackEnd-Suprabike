class AddImageToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :user, :image_id, :integer
    add_index :user, :image_id
  end
end
