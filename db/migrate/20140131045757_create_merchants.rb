class CreateMerchants < ActiveRecord::Migration
  def change
    create_table :merchants do |t|
      t.string :name
      t.string :url
      t.integer :contact
      t.text :address
      t.text :note

      t.timestamps
    end
  end
end
