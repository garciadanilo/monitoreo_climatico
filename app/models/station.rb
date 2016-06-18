class Station < ActiveRecord::Base
  #Asociaciones
  has_many :station_sensors
  has_many :sensors, through: :station_sensors

  #Validaciones
  validates :nombre, presence: true
end
