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

ActiveRecord::Schema.define(version: 20150826001911) do

  create_table "genero_peliculas", force: :cascade do |t|
    t.integer  "pelicula_id"
    t.integer  "genero_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "genero_peliculas", ["genero_id"], name: "index_genero_peliculas_on_genero_id"
  add_index "genero_peliculas", ["pelicula_id"], name: "index_genero_peliculas_on_pelicula_id"

  create_table "generos", force: :cascade do |t|
    t.string   "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "peliculas", force: :cascade do |t|
    t.string   "titulo"
    t.string   "director"
    t.string   "origen"
    t.integer  "duracion"
    t.integer  "stock"
    t.integer  "codigo"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.string   "imagen_file_name"
    t.string   "imagen_content_type"
    t.integer  "imagen_file_size"
    t.datetime "imagen_updated_at"
  end

  create_table "prestamos", force: :cascade do |t|
    t.integer  "pelicula_id"
    t.integer  "socio_id"
    t.datetime "devolucion"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "prestamos", ["pelicula_id"], name: "index_prestamos_on_pelicula_id"
  add_index "prestamos", ["socio_id"], name: "index_prestamos_on_socio_id"

  create_table "puntajes", force: :cascade do |t|
    t.integer  "pelicula_id"
    t.integer  "socio_id"
    t.integer  "nro_puntaje"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "puntajes", ["pelicula_id"], name: "index_puntajes_on_pelicula_id"
  add_index "puntajes", ["socio_id"], name: "index_puntajes_on_socio_id"

  create_table "socios", force: :cascade do |t|
    t.string   "nombre"
    t.string   "apellido"
    t.integer  "nro_socio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
