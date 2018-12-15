class AddProductToItem < ActiveRecord::Migration[5.2]
  def change
    add_reference :items, :product, foreign_key: true
  end
end
