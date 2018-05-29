class CreateNotifications < ActiveRecord::Migration[5.1]
  def change
    create_table :notifications do |t|
      t.string :description
      t.boolean :has_been_read
      t.belongs_to :technician, index: true
      t.belongs_to :user, index: true
      t.belongs_to :store, index: true
      t.timestamps
    end
  end
end
