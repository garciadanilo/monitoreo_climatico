class CreateSensors < ActiveRecord::Migration
  def change
    create_table :sensors do |t|
      t.string :nombre, null: false
      t.text :descripcion
      t.boolean :deleted

      t.timestamps null: false
    end
  end
end
