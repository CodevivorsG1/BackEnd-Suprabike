class AddCityToTech < ActiveRecord::Migration[5.1]
  def change
    add_column :technicians, :city_id, :integer
    add_index :technicians, :city_id
  end
end
