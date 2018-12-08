class CreateCarts < ActiveRecord::Migration[5.2]
  def change
    create_table :carts do |t|
      t.boolean :paid, default: false

      t.timestamps
    end
  end
end
