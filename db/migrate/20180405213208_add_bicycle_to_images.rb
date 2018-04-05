class AddBicycleToImages < ActiveRecord::Migration[5.1]
  def change
    add_column :images, :bicycle_id, :integer
    add_index :images, :bicycle_id
  end
end
