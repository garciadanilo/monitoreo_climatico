# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 4) do

  create_table "sensors", force: :cascade do |t|
    t.string   "nombre",      null: false
    t.text     "descripcion"
    t.boolean  "deleted"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "station_sensor_measurements", force: :cascade do |t|
    t.integer  "station_sensor_id"
    t.float    "medida"
    t.datetime "fecha_hora_dispositivo"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "station_sensor_measurements", ["station_sensor_id"], name: "index_station_sensor_measurements_on_station_sensor_id"

  create_table "station_sensors", force: :cascade do |t|
    t.integer  "station_id", null: false
    t.integer  "sensor_id",  null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "station_sensors", ["sensor_id"], name: "index_station_sensors_on_sensor_id"
  add_index "station_sensors", ["station_id"], name: "index_station_sensors_on_station_id"

  create_table "stations", force: :cascade do |t|
    t.string   "nombre",      null: false
    t.text     "descripcion"
    t.boolean  "deleted"
    t.boolean  "enabled"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end
