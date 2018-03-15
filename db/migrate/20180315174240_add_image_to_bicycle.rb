class AddImageToBicycle < ActiveRecord::Migration[5.1]
  def change
    add_column :bicycle, :image_id, :integer
    add_index :bicycle, :image_id
  end
end
