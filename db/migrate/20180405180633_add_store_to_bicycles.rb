class AddStoreToBicycles < ActiveRecord::Migration[5.1]
  def change
    add_column :bicycles, :store_id, :integer
    add_index :bicycles, :store_id
  end
end
