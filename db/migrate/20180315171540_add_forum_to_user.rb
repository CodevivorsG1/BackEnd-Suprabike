class AddForumToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :user, :forum_id, :integer
    add_index :user, :forum_id
  end
end
