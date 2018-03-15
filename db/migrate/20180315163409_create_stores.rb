class CreateStores < ActiveRecord::Migration[5.1]
  def change
    create_table :stores do |t|
      t.string :name
      t.string :address
      t.string :email
      t.datetime :dateregis
      t.integer :score
      t.string :cellphone
      t.string :phoneNum

      t.timestamps
    end
  end
end
