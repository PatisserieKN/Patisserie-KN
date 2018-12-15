class CreateAdresses < ActiveRecord::Migration[5.2]
  def change
    create_table :adresses do |t|
      t.integer :street_number
      t.text :route
      t.string :locality
      t.string :administrative_area_level_1
      t.string :country
      t.integer :postal_code

      t.timestamps
    end
  end
end
