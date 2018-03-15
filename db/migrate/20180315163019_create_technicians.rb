class CreateTechnicians < ActiveRecord::Migration[5.1]
  def change
    create_table :technicians do |t|
      t.string :name
      t.string :surname
      t.string :typework
      t.string :email
      t.float :costhour
      t.string :phoneNum

      t.timestamps
    end
  end
end
