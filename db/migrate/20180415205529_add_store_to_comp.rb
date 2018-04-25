class AddStoreToComp < ActiveRecord::Migration[5.1]
=begin   def change
    add_column :components, :store_id, :integer
    add_index :components, :store_id
  end 
=end
end
