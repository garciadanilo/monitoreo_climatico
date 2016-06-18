json.array!(@station_sensors) do |station_sensor|
  json.extract! station_sensor, :id, :station_id, :sensor_id
  json.url station_sensor_url(station_sensor, format: :json)
end
