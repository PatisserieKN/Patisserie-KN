class AddBuyableToItems < ActiveRecord::Migration[5.2]
  def change
    add_reference :items, :buyable, polymorphic: true, index: true
  end
end
