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

ActiveRecord::Schema.define(:version => 20110521182816) do

  create_table "candidatos", :force => true do |t|
    t.string   "nome"
    t.string   "endereco"
    t.string   "formacao"
    t.string   "experiencia"
    t.decimal  "pretencao_salarial"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "cidade"
    t.string   "uf"
    t.string   "curso"
  end

  create_table "cargos", :force => true do |t|
    t.text     "descricao"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "empresa_id"
  end

  create_table "empresas", :force => true do |t|
    t.string   "nome"
    t.string   "cnpj"
    t.string   "endereco"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "vagas", :force => true do |t|
    t.string   "descricao"
    t.decimal  "salario"
    t.string   "experiencia"
    t.string   "formacao"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "empresa_id"
    t.integer  "cargo_id"
    t.string   "cidade"
    t.string   "uf"
    t.boolean  "status"
    t.datetime "data_limite"
    t.string   "curso"
  end

end
