class AddImageUrlToMenClothes < ActiveRecord::Migration[5.2]
  def change
    add_column :men_clothes, :image_url, :string
  end
end
