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

ActiveRecord::Schema.define(version: 20160518024705) do

  create_table "especialidades", force: :cascade do |t|
    t.string   "nome"
    t.text     "descric"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "profissionals", force: :cascade do |t|
    t.string   "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "unidades", force: :cascade do |t|
    t.string   "nome"
    t.string   "bairro"
    t.string   "endereco"
    t.string   "comochegar"
    t.float    "longitude"
    t.float    "latitude"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "vinculos", force: :cascade do |t|
    t.string   "comochegar"
    t.string   "atende"
    t.integer  "unidade_id"
    t.integer  "profissional_id"
    t.integer  "especialidade_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "vinculos", ["especialidade_id"], name: "index_vinculos_on_especialidade_id"
  add_index "vinculos", ["profissional_id"], name: "index_vinculos_on_profissional_id"
  add_index "vinculos", ["unidade_id"], name: "index_vinculos_on_unidade_id"

end
