require "time"
class CreateStores < ActiveRecord::Migration[5.1]
  
  def change
    create_table :stores do |t|
      t.integer :id_store
      t.string :name_store
      t.string :address_store
      t.string :email_store
      t.Date :dateregis_store
      t.integer :score_store
      t.string :password_store
      t.integer :phonenum_store
      t.integer :celphone_store

      t.timestamps
    end
  end
end
