json.array!(@sensors) do |sensor|
  json.extract! sensor, :id, :nombre, :descripcion, :deleted
  json.url sensor_url(sensor, format: :json)
end
