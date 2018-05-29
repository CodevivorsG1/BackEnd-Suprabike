class AddAtriToBic < ActiveRecord::Migration[5.1]
  def change
    add_column :bicycle_to_assembles , :size , :string
    add_column :bicycle_to_assembles, :type_of_use, :string
  end
end
