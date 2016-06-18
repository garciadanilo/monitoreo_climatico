class CreateStationSensors < ActiveRecord::Migration
  def change
    create_table :station_sensors do |t|
      t.references :station, index: true, foreign_key: true, null: false
      t.references :sensor, index: true, foreign_key: true, null: false

      t.timestamps null: false
    end
  end
end
