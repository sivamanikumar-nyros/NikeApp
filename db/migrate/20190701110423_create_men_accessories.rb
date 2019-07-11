class CreateMenAccessories < ActiveRecord::Migration[5.2]
  def change
    create_table :men_accessories do |t|
      t.string :name
      t.string :price
      t.integer :men_accessories_category_id

      t.timestamps
    end
  end
end
