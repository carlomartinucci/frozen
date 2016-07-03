class CreateListItems < ActiveRecord::Migration
  def change
    create_table :list_items do |t|
      t.references :grocery_list, index: true, foreign_key: true
      t.references :food, index: true, foreign_key: true
      t.integer :quantity
      t.datetime :expiration_date

      t.timestamps null: false
    end
  end
end
