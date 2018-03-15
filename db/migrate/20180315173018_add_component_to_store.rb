class AddComponentToStore < ActiveRecord::Migration[5.1]
  def 
    add_column :store, :component_id, :integer
    add_index :store, :component_id
  end
end
