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

ActiveRecord::Schema.define(version: 2019_06_14_184746) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cryptos", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "logo"
    t.string "symbol"
    t.float "value"
    t.integer "coinbase_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "trades", force: :cascade do |t|
    t.string "description"
    t.float "amount"
    t.float "price"
    t.bigint "user_id"
    t.bigint "crypto_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["crypto_id"], name: "index_trades_on_crypto_id"
    t.index ["user_id"], name: "index_trades_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "username"
    t.string "password_digest"
    t.string "email"
    t.integer "phone"
    t.float "wallet", default: 0.0
    t.float "bitcoin", default: 0.0
    t.float "ethereum", default: 0.0
    t.float "litecoin", default: 0.0
    t.float "bitcoin_cash", default: 0.0
    t.float "stellar", default: 0.0
    t.float "eos", default: 0.0
    t.float "monero", default: 0.0
    t.float "qtum", default: 0.0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "trades", "cryptos"
  add_foreign_key "trades", "users"
end
