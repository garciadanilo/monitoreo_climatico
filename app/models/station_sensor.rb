class StationSensor < ActiveRecord::Base
  #Asociaciones
  belongs_to :station
  belongs_to :sensor
  has_many :station_sensor_measurements
end
