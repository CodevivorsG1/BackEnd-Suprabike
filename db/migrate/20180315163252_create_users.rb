class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :surname
      t.string :gender
      t.string :email
      t.string :phoneNum
      t.string :cellphone

      t.timestamps
    end
  end
end
