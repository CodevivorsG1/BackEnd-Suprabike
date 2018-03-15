class AddCityToStore < ActiveRecord::Migration[5.1]
  def change
    add_column :store, :city_id, :integer
    add_index :store, :city_id
  end
end
