class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.integer :user_id
      t.text :bio
      t.date :date_of_birth

      t.timestamps null: false
    end
  end
end
