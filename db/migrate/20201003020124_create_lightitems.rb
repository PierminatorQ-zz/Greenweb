class CreateLightitems < ActiveRecord::Migration[5.2]
  def change
    create_table :lightitems do |t|
      t.string :name
      t.text :description
      t.string :brand
      t.integer :power
      t.integer :flux
      t.integer :voltage
      t.integer :price
      t.integer :stock, default: 0
      t.integer :status, default: 1
      t.integer :useful_life
      t.integer :ip_protection
      t.integer :color_temp
      t.text :additionals

      t.timestamps
    end
  end
end
