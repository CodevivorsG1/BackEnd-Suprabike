class AddComponentToImages < ActiveRecord::Migration[5.1]
  def change
    add_column :images, :component_id, :integer
    add_index :images, :component_id
  end
end
