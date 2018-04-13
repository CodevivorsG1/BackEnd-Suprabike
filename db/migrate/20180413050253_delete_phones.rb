class DeletePhones < ActiveRecord::Migration[5.1]
  def change
    remove_column :stores , :celphone_store
    remove_column :stores , :phonenum_store
    remove_column :users , :phonenumUser
    remove_column :users , :celphoneUser
  end
end
