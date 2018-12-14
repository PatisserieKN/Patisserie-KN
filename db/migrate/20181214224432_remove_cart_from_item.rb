class RemoveCartFromItem < ActiveRecord::Migration[5.2]
  def change
    remove_reference :items, :cart, foreign_key: true
  end
end
