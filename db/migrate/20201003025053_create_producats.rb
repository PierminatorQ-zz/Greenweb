class CreateProducats < ActiveRecord::Migration[5.2]
  def change
    create_table :producats do |t|
      t.references :lightitem, foreign_key: true
      t.references :solaritem, foreign_key: true
      t.references :cctvitem, foreign_key: true
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
