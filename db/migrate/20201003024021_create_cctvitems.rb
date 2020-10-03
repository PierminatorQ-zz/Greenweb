class CreateCctvitems < ActiveRecord::Migration[5.2]
  def change
    create_table :cctvitems do |t|
      t.string :name
      t.text :description
      t.string :brand
      t.integer :price
      t.integer :stock, default: 0
      t.integer :status, default: 1
      t.integer :resolution
      t.string  :type_of
      t.integer :channels
      t.integer :max_channels_ip
      t.text :additionals

      t.timestamps
    end
  end
end
