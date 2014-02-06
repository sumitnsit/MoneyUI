class AddActiveToUnits < ActiveRecord::Migration
  def change
    add_column :units, :active, :boolean
  end
end
