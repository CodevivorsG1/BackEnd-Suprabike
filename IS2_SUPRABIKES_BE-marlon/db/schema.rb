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

ActiveRecord::Schema.define(version: 20180315183239) do

  create_table "bicycles", force: :cascade do |t|
    t.integer "id_bicy"
    t.string "brand_bicy"
    t.string "material_bicy"
    t.string "components_bicy"
    t.float "price_bicy"
    t.string "usetype_bicy"
    t.string "description_bicy"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cities", force: :cascade do |t|
    t.integer "idcity"
    t.string "name_city"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comments", force: :cascade do |t|
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "components", force: :cascade do |t|
    t.string "type_component"
    t.float "price_component"
    t.string "description_component"
    t.string "brand_component"
    t.float "sizes_component"
    t.string "material_component"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "forums", force: :cascade do |t|
    t.string "topic"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "images", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stores", force: :cascade do |t|
    t.integer "id_store"
    t.string "name_store"
    t.string "address_store"
    t.string "email_store"
    t.string "dateregis_store"
    t.integer "score_store"
    t.string "password_store"
    t.integer "phonenum_store"
    t.integer "celphone_store"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "technicians", force: :cascade do |t|
    t.integer "id_technical"
    t.string "NameTec"
    t.string "SurnameTec"
    t.string "typeworktec"
    t.string "emailtec"
    t.float "costhourtec"
    t.string "passwordtec"
    t.integer "phonenumtec"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "transactions", force: :cascade do |t|
    t.string "date_transaction"
    t.string "type_transaction"
    t.float "total_transaction"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.integer "idUser"
    t.string "nameUser"
    t.string "surnameUser"
    t.string "genderUser"
    t.string "emailUser"
    t.string "passwordUser"
    t.integer "phonenumUser"
    t.integer "celphoneUser"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
