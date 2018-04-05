class AddForumToComments < ActiveRecord::Migration[5.1]
  def change
    add_column :comments, :forum_id, :integer
    add_index :comments, :forum_id
  end
end
