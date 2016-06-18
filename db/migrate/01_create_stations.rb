class CreateStations < ActiveRecord::Migration
  def change
    create_table :stations do |t|
      t.string :nombre, null: false
      t.text :descripcion
      t.boolean :deleted
      t.boolean :enabled

      t.timestamps null: false
    end
  end
end
