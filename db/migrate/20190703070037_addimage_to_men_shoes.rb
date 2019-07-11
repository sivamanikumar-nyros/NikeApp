class AddimageToMenShoes < ActiveRecord::Migration[5.2]
  def change
  	add_attachment :men_shoes,:image
  end
end
