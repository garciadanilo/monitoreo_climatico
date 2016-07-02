Rails.application.routes.draw do
  resources :station_sensors
  resources :sensors
  resources :stations
  
  get 'stations/:id/active/:status' => 'stations#active', as: 'active_stations'
end
