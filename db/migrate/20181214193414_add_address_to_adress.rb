class AddAddressToAdress < ActiveRecord::Migration[5.2]
  def change
    add_column :adresses, :full_address, :text
  end
end
