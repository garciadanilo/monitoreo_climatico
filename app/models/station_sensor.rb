class StationSensor < ActiveRecord::Base
  belongs_to :station
  belongs_to :sensor
end
