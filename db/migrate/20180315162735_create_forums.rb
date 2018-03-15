class CreateForums < ActiveRecord::Migration[5.1]
  def change
    create_table :forums do |t|
      t.text :topic

      t.timestamps
    end
  end
end
