class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.integer :idUser
      t.string :nameUser
      t.string :surnameUser
      t.string :genderUser
      t.string :emailUser
      t.string :passwordUser
      t.integer :phonenumUser
      t.integer :celphoneUser

      t.timestamps
    end
  end
end
