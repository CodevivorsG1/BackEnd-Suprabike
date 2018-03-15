class CreateImages < ActiveRecord::Migration[5.1]
  def change
    create_table :images do |t|
      t.integer :size
      t.text :description

      t.timestamps
    end
  end
end
