class AddAttributeToComp < ActiveRecord::Migration[5.1]
  def change
    add_column :components, :part_of_bike, :string
    add_column :components, :strength, :string
    add_column :components, :length , :float
    add_column :components, :height, :string
    add_column :components, :suspension, :string
    add_column :components, :width, :float
    add_column :components, :amount_of_relief, :string
    add_column :components, :rin, :integer
    add_column :components, :profile , :string
    add_column :components, :frame_size, :float
    add_column :components, :rear_suspension, :string
    add_column :components, :number_of_changes, :integer
    add_column :components, :num_plates, :integer
    add_column :components, :num_dish_teeth, :integer
  end
end
