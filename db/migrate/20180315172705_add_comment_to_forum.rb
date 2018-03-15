class AddCommentToForum < ActiveRecord::Migration[5.1]
  def change
    add_column :forum, :comment_id, :integer
    add_index :forum, :comment_id
  end
end
