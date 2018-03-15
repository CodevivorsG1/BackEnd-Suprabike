class AddBicycleToStore < ActiveRecord::Migration[5.1]
  def change
    add_column :store, :bicycle_id, :integer
    add_index :store, :biclycle_id
  end
end
