class CreateCurrencies < ActiveRecord::Migration
  def change
    create_table :currencies do |t|
      t.string :name
      t.string :symbol
      t.decimal :exchange_rate

      t.timestamps
    end
  end
end
