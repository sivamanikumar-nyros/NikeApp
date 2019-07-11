class CreateMenClothesCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :men_clothes_categories do |t|
      t.string :name

      t.timestamps
    end
  end
end
