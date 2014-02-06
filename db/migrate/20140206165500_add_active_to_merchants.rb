class AddActiveToMerchants < ActiveRecord::Migration
  def change
    add_column :merchants, :active, :boolean
  end
end
