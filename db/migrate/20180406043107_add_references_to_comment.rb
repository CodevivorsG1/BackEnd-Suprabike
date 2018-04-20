class AddReferencesToComment < ActiveRecord::Migration[5.1]
  def change
    add_column :comments, :forum_id, :integer
    add_index :comments, :forum_id

    add_column :comments, :user_id, :integer
    add_index :comments, :user_id
  end
end
