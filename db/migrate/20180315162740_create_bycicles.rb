class CreateBycicles < ActiveRecord::Migration[5.1]
  def change
    create_table :bycicles do |t|
      t.string :brand
      t.string :material
      t.string :components
      t.float :price
      t.string :use_type
      t.text :description

      t.timestamps
    end
  end
end
