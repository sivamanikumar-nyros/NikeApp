class CreateMenShoes < ActiveRecord::Migration[5.2]
  def change
    create_table :men_shoes do |t|
      t.string :name
      t.string :price
      t.integer :men_shoe_category_id

      t.timestamps
    end
  end
end
