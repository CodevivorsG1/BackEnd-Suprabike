class Delete < ActiveRecord::Migration[5.1]
  def change
    remove_column :images, :this_image
  end
end
