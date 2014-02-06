class AddActiveToCurrencies < ActiveRecord::Migration
  def change
    add_column :currencies, :active, :boolean
  end
end
