class CreateFoods < ActiveRecord::Migration
  def change
    create_table :foods do |t|
      t.references :food_category, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
