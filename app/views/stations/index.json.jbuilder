json.array!(@stations) do |station|
  json.extract! station, :id, :nombre, :descripcion, :deleted, :enabled
  json.url station_url(station, format: :json)
end
