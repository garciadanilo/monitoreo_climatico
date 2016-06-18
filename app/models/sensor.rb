class Sensor < ActiveRecord::Base
  validates :nombre, presence: true
end
