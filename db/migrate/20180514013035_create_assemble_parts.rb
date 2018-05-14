class CreateAssembleParts < ActiveRecord::Migration[5.1]
  def change
    create_table :assemble_parts do |t|
      t.belongs_to :component, index: true
      t.belongs_to :bicycle_to_assemble, index: true
      t.timestamps
    end
  end
end
