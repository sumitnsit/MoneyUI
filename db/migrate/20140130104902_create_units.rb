class CreateUnits < ActiveRecord::Migration
  def change
    create_table :units do |t|
      t.string :symbol
      t.string :name
      t.boolean :active
      t.string :unit_type
      t.string :note

      t.timestamps
    end
  end
end
