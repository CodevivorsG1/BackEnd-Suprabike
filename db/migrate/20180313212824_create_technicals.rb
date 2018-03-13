class CreateTechnicals < ActiveRecord::Migration[5.1]
  def change
    create_table :technicals do |t|
      t.integer :id_technical
      t.string :NameTec
      t.string :SurnameTec
      t.string :typeworktec
      t.string :emailtec
      t.float :costhourtec
      t.string :phonenumtec

      t.timestamps
    end
  end
end
