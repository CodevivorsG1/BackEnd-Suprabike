class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :surname
      t.string :gender
      t.string :email
      t.string :password
      t.integer :iduser

      t.timestamps
    end
  end
end
