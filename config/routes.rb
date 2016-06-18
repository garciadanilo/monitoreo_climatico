Rails.application.routes.draw do
  resources :station_sensors
  resources :sensors
  resources :stations
end
