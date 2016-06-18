require 'test_helper'

class StationSensorsControllerTest < ActionController::TestCase
  setup do
    @station_sensor = station_sensors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:station_sensors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create station_sensor" do
    assert_difference('StationSensor.count') do
      post :create, station_sensor: { sensor_id: @station_sensor.sensor_id, station_id: @station_sensor.station_id }
    end

    assert_redirected_to station_sensor_path(assigns(:station_sensor))
  end

  test "should show station_sensor" do
    get :show, id: @station_sensor
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @station_sensor
    assert_response :success
  end

  test "should update station_sensor" do
    patch :update, id: @station_sensor, station_sensor: { sensor_id: @station_sensor.sensor_id, station_id: @station_sensor.station_id }
    assert_redirected_to station_sensor_path(assigns(:station_sensor))
  end

  test "should destroy station_sensor" do
    assert_difference('StationSensor.count', -1) do
      delete :destroy, id: @station_sensor
    end

    assert_redirected_to station_sensors_path
  end
end
