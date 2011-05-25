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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110525203738) do

  create_table "candidatos", :force => true do |t|
    t.string   "nome"
    t.string   "endereco"
    t.integer  "formacao"
    t.integer  "experiencia"
    t.decimal  "pretencao_salarial"
    t.string   "cidade"
    t.integer  "uf"
    t.integer  "curso"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "email"
  end

  create_table "cargos", :force => true do |t|
    t.text     "descricao"
    t.integer  "empresa_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "empresas", :force => true do |t|
    t.string   "nome"
    t.string   "cnpj"
    t.string   "endereco"
    t.integer  "uf"
    t.string   "cidade"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "roles", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "login",                              :null => false
    t.string   "crypted_password",                   :null => false
    t.string   "password_salt",                      :null => false
    t.string   "persistence_token",                  :null => false
    t.string   "single_access_token",                :null => false
    t.string   "perishable_token",                   :null => false
    t.integer  "login_count",         :default => 0, :null => false
    t.integer  "failed_login_count",  :default => 0, :null => false
    t.datetime "last_request_at"
    t.datetime "current_login_at"
    t.datetime "last_login_at"
    t.string   "current_login_ip"
    t.string   "last_login_ip"
    t.integer  "userble_id"
    t.string   "userble_type"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "role_id"
  end

  create_table "vagas", :force => true do |t|
    t.string   "descricao"
    t.decimal  "salario"
    t.integer  "experiencia"
    t.integer  "formacao"
    t.integer  "empresa_id"
    t.integer  "cargo_id"
    t.integer  "curso"
    t.string   "cidade"
    t.integer  "uf"
    t.boolean  "status"
    t.datetime "data_limite"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "num_vagas"
  end

end
