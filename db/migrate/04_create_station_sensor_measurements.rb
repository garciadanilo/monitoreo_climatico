class CreateStationSensorMeasurements < ActiveRecord::Migration
  def change
    create_table :station_sensor_measurements do |t|
      t.references :station_sensor, index: true, foreign_key: true
      t.float :medida
      t.datetime :fecha_hora_dispositivo

      t.timestamps null: false
    end
  end
end
