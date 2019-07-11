class CreateMenClothes < ActiveRecord::Migration[5.2]
  def change
    create_table :men_clothes do |t|
      t.string :name
      t.string :price
      t.integer :men_clothes_category_id

      t.timestamps
    end
  end
end
