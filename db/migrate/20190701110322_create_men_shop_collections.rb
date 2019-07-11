class CreateMenShopCollections < ActiveRecord::Migration[5.2]
  def change
    create_table :men_shop_collections do |t|
      t.string :name
      t.string :price
      t.integer :men_shop_collection_category_id

      t.timestamps
    end
  end
end
