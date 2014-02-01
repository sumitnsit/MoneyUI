class CreateShoppings < ActiveRecord::Migration
  def change
    create_table :shoppings do |t|
      t.integer :account_id
      t.decimal :amount
      t.date :date
      t.integer :merchant_id
      t.string :bill_number

      t.timestamps
    end
  end
end
