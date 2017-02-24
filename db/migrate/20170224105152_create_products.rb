class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.float :price
      t.string :category
      t.text :description
      t.date :release_date
      t.boolean :is_available
      t.integer :stock

      t.timestamps null: false
    end
  end
end
