class AddGlobalPriceToOrder < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :global_price, :decimal
  end
end
