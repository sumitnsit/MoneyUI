class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :name
      t.decimal :init_balance
      t.date :date
      t.boolean :active
      t.text :note

      t.timestamps
    end
  end
end
