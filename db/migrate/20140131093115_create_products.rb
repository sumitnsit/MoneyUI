class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.decimal :quantity
      t.integer :unit_id
      t.decimal :rate
      t.decimal :amount
      t.integer :category_id

      t.timestamps

    end
  end
end
