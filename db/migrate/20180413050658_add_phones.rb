class AddPhones < ActiveRecord::Migration[5.1]
  def change
    #add_column :technicians, :phonenumtec, :integer , :limit => 8
    add_column :stores , :celphone_store, :integer , :limit => 8
    add_column :stores , :phonenum_store, :integer , :limit => 8
    add_column :users , :phonenumUser, :integer , :limit => 8
    add_column :users , :celphoneUser, :integer , :limit => 8
  end
end
