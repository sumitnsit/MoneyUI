class CreateTransfers < ActiveRecord::Migration
  def change
    create_table :transfers do |t|
      t.date :date
      t.decimal :amount
      t.integer :from_account_id
      t.string :to_account_id
      t.text :note

      t.timestamps
    end
  end
end
