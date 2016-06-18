class StationSensorMeasurement < ActiveRecord::Base
  #Asociaciones
  belongs_to :station_sensor
  
  #Validaciones
  validates :medida, presence: true
end
