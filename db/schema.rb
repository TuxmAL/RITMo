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

ActiveRecord::Schema.define(version: 20171116114250) do

  create_table "anagrafiche", force: :cascade do |t|
    t.string "nome"
    t.string "cognome"
    t.integer "sesso_id"
    t.integer "luogonascita_id"
    t.date "datanascita"
    t.integer "parente_id"
    t.integer "parentela_id"
    t.string "recapiti"
    t.text "note"
    t.integer "utente_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["luogonascita_id"], name: "index_anagrafiche_on_luogonascita_id"
    t.index ["parente_id"], name: "index_anagrafiche_on_parente_id"
    t.index ["parentela_id"], name: "index_anagrafiche_on_parentela_id"
    t.index ["sesso_id"], name: "index_anagrafiche_on_sesso_id"
    t.index ["utente_id"], name: "index_anagrafiche_on_utente_id"
  end

  create_table "parentele", force: :cascade do |t|
    t.string "parentela"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "qualifiche", force: :cascade do |t|
    t.string "qualifica"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "richieste", force: :cascade do |t|
    t.string "richiesta"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sessi", force: :cascade do |t|
    t.string "sesso"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stati_civili", force: :cascade do |t|
    t.string "stato"
    t.integer "sesso_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["sesso_id"], name: "index_stati_civili_on_sesso_id"
  end

  create_table "tessere", force: :cascade do |t|
    t.integer "tiporichiesta_id"
    t.integer "anagrafico_id"
    t.integer "tipo_tessera_id"
    t.integer "intestatario_id"
    t.integer "qualifica_id"
    t.string "statura"
    t.string "string"
    t.string "capelli"
    t.string "occhi"
    t.string "segni_particolari"
    t.integer "residenza_id"
    t.string "indirizzo"
    t.integer "statocivile_id"
    t.string "numero_tessera"
    t.string "integer"
    t.date "data_rilascio"
    t.date "data_convalida"
    t.text "variazioni_uno"
    t.text "variazioni_due"
    t.text "variazioni_tre"
    t.text "note"
    t.boolean "annullata"
    t.boolean "stampata"
    t.integer "utente_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["anagrafico_id"], name: "index_tessere_on_anagrafico_id"
    t.index ["intestatario_id"], name: "index_tessere_on_intestatario_id"
    t.index ["qualifica_id"], name: "index_tessere_on_qualifica_id"
    t.index ["residenza_id"], name: "index_tessere_on_residenza_id"
    t.index ["statocivile_id"], name: "index_tessere_on_statocivile_id"
    t.index ["tipo_tessera_id"], name: "index_tessere_on_tipo_tessera_id"
    t.index ["tiporichiesta_id"], name: "index_tessere_on_tiporichiesta_id"
    t.index ["utente_id"], name: "index_tessere_on_utente_id"
  end

  create_table "tipi_tessere", force: :cascade do |t|
    t.string "tipo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "utenti", force: :cascade do |t|
    t.string "user_name"
    t.string "password_digest"
    t.string "name"
    t.boolean "attivo"
    t.boolean "amministratore"
    t.text "note"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
