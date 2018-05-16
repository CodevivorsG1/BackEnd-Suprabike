class CreateBicycleToAssembles < ActiveRecord::Migration[5.1]
  def change
    create_table :bicycle_to_assembles do |t|
      t.float :total_price
      t.belongs_to :user, index: :true
      t.timestamps
    end
  end
end
