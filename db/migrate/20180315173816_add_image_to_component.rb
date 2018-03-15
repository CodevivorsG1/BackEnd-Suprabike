class AddImageToComponent < ActiveRecord::Migration[5.1]
  def change
    add_column :component, :image_id, :integer
    add_index :component, :image_id
  end
end
