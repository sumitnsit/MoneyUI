class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name
      t.integer :parent_id
      t.boolean :active
      t.string :note

      t.timestamps
    end
  end
end
