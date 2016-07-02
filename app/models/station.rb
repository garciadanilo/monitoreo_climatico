class Station < ActiveRecord::Base
  #Asociaciones
  has_many :station_sensors
  has_many :sensors, through: :station_sensors

  #Validaciones
  validates :nombre, presence: true

  #Callbacks
  before_create :before_create_callback

  private
  def before_create_callback
    self.deleted = false
    self.enabled = true
  end
end
