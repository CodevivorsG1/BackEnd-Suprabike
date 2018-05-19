class AddScorefromUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :stores, :mean_score , :integer, array: true, default: []
  end
end
