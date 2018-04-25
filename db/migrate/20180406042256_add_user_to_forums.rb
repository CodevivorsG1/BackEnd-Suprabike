class AddUserToForums < ActiveRecord::Migration[5.1]
=begin   def change
    add_column :forums, :user_id, :integer
    add_index :forums, :user_id
  end
=end
end
