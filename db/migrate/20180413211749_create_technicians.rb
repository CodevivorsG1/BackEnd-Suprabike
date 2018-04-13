class CreateTechnicians < ActiveRecord::Migration[5.2]
  def change
    create_table :technicians do |t|
      t.string :name
      t.string :surname
      t.string :typework
      t.string :email
      t.float :costhour
      t.integer :phone
      t.integer :cedula

      t.timestamps
    end
  end
end
