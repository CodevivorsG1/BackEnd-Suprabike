class CreateTechnicians < ActiveRecord::Migration[5.1]
  def change
    create_table :technicians do |t|
      t.integer :id_technical
      t.string :NameTec
      t.string :SurnameTec
      t.string :typeworktec
      t.string :emailtec
      t.float :costhourtec
      t.string :passwordtec
      t.integer :phonenumtec

      t.timestamps
    end
  end
end
