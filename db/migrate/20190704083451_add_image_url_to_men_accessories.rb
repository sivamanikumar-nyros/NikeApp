class AddImageUrlToMenAccessories < ActiveRecord::Migration[5.2]
  def change
    add_column :men_accessories, :image_url, :string
  end
end
