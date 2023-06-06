# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2023_06_06_145118) do

  create_table "documents", force: :cascade do |t|
    t.string "tipo_documento"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "people", force: :cascade do |t|
    t.string "identificacion"
    t.string "primer_nombre"
    t.string "segundo_nombre"
    t.string "primer_apellido"
    t.string "segundo_apellido"
    t.integer "document_id", null: false
    t.integer "role_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["document_id"], name: "index_people_on_document_id"
    t.index ["role_id"], name: "index_people_on_role_id"
  end

  create_table "roles", force: :cascade do |t|
    t.string "nombre_rol"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "people", "documents"
  add_foreign_key "people", "roles"
end
