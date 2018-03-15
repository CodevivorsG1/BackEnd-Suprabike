class AddCommentToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :user, :comment_id, :integer
    add_index :user, :comment_id
  end
end
