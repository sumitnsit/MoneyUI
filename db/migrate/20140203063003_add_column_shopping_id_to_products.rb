class AddColumnShoppingIdToProducts < ActiveRecord::Migration
  def change
  	add_column :products, :shopping_id, :integer
  end
end
