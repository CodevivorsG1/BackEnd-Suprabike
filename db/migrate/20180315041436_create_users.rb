class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.belongs_to :city , index: true
      t.integer :idUser
      t.string :nameUser
      t.string :surnameUser
      t.string :genderUser
      t.integer :phonenumUser
      t.integer :celphoneUser

      
      t.integer :city_id
      t.timestamps
    end
  end
end
