class CreateComponents < ActiveRecord::Migration[5.1]
  def change
    create_table :components do |t|
      t.string :type
      t.float :price
      t.text :description
      t.string :brand
      t.string :sizes
      t.string :material

      t.timestamps
    end
  end
end
