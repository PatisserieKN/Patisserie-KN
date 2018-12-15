class RemoveCartFromProduct < ActiveRecord::Migration[5.2]
  def change
    remove_reference :products, :cart, foreign_key: true
  end
end
