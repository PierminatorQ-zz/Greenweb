class CreateSolaritems < ActiveRecord::Migration[5.2]
  def change
    create_table :solaritems do |t|
      t.string :name
      t.text :description
      t.string :brand
      t.integer :peak_power
      t.integer :flux
      t.integer :voltage_work
      t.integer :price
      t.integer :stock, default: 0
      t.integer :status, default: 1
      t.integer :voc
      t.integer :isc
      t.integer :efficiency
      t.string :battery
      t.text :additionals

      t.timestamps
    end
  end
end
