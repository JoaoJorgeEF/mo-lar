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

ActiveRecord::Schema[7.0].define(version: 2022_10_16_144900) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "enderecos", force: :cascade do |t|
    t.string "logradouro"
    t.string "bairro"
    t.string "numero_residencia"
    t.string "cep"
    t.bigint "usuario_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["usuario_id"], name: "index_enderecos_on_usuario_id"
  end

  create_table "usuarios", force: :cascade do |t|
    t.string "nome"
    t.string "telefone"
    t.string "email"
    t.string "senha"
    t.string "cpf"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "enderecos", "usuarios"
end
