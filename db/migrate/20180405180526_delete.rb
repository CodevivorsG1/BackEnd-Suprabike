class Delete < ActiveRecord::Migration[5.1]
  def change
    remove_column :bicycles, :id_store
  end
end
