class CreateMenShoeCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :men_shoe_categories do |t|
      t.string :name

      t.timestamps
    end
  end
end
