class StationSensorsController < ApplicationController
  before_action :set_station_sensor, only: [:show, :edit, :update, :destroy]

  # GET /station_sensors
  # GET /station_sensors.json
  def index
    @station_sensors = StationSensor.all
  end

  # GET /station_sensors/1
  # GET /station_sensors/1.json
  def show
  end

  # GET /station_sensors/new
  def new
    @station_sensor = StationSensor.new
    @stations = Station.all
    @sensors = Sensor.all
  end

  # GET /station_sensors/1/edit
  def edit
  end

  # POST /station_sensors
  # POST /station_sensors.json
  def create
    @station_sensor = StationSensor.new(station_sensor_params)

    respond_to do |format|
      if @station_sensor.save
        format.html { redirect_to @station_sensor, notice: 'Station sensor was successfully created.' }
        format.json { render :show, status: :created, location: @station_sensor }
      else
        format.html { render :new }
        format.json { render json: @station_sensor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /station_sensors/1
  # PATCH/PUT /station_sensors/1.json
  def update
    respond_to do |format|
      if @station_sensor.update(station_sensor_params)
        format.html { redirect_to @station_sensor, notice: 'Station sensor was successfully updated.' }
        format.json { render :show, status: :ok, location: @station_sensor }
      else
        format.html { render :edit }
        format.json { render json: @station_sensor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /station_sensors/1
  # DELETE /station_sensors/1.json
  def destroy
    @station_sensor.destroy
    respond_to do |format|
      format.html { redirect_to station_sensors_url, notice: 'Station sensor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_station_sensor
      @station_sensor = StationSensor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def station_sensor_params
      params.require(:station_sensor).permit(:station_id, :sensor_id)
    end
end
