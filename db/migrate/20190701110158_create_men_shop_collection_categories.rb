class CreateMenShopCollectionCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :men_shop_collection_categories do |t|
      t.string :name

      t.timestamps
    end
  end
end
