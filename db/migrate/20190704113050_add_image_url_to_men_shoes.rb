class AddImageUrlToMenShoes < ActiveRecord::Migration[5.2]
  def change
    add_column :men_shoes, :image_url, :string
  end
end
