class AddCityToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :user, :city_id, :integer
    add_index :user, :city_id
  end
end
