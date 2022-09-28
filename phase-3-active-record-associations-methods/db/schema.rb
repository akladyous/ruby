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

ActiveRecord::Schema.define(version: 2021_12_21_014843) do

  create_table "appointments", force: :cascade do |t|
    t.datetime "data"
    t.integer "patient_id"
    t.integer "ved_id"
  end

  create_table "clinics", force: :cascade do |t|
    t.string "clinic_name"
    t.string "address"
    t.string "phone"
  end

  create_table "patients", force: :cascade do |t|
    t.string "species"
    t.string "name"
    t.string "owner"
    t.string "phone"
    t.boolean "active"
    t.integer "age"
    t.integer "clinic_id"
  end

  create_table "vets", force: :cascade do |t|
    t.string "vet_name"
    t.string "specialty"
  end

end
