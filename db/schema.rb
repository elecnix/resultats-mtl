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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20131030000705) do

  create_table "affichages", :force => true do |t|
    t.integer "arrondissement_id"
  end

  create_table "arrondissements", :force => true do |t|
    t.integer "mtl_id"
    t.string  "nom"
  end

  create_table "candidat_maire_arrondissements", :force => true do |t|
    t.integer "mtl_id"
    t.integer "arrondissement_id"
    t.integer "parti_id"
    t.string  "nom"
    t.string  "prenom"
    t.integer "nb_voix_obtenues"
  end

  create_table "candidat_maires", :force => true do |t|
    t.integer "mtl_id"
    t.string  "nom"
    t.string  "prenom"
    t.integer "nb_voix_obtenues"
    t.integer "nb_voix_majorite"
    t.integer "parti_id"
  end

  create_table "candidats", :force => true do |t|
    t.integer "mtl_id"
    t.string  "nom"
    t.string  "prenom"
    t.integer "nb_voix_obtenues"
    t.integer "nb_voix_majorite"
    t.integer "parti_id"
    t.integer "poste_id"
  end

  create_table "districts", :force => true do |t|
    t.integer "mtl_id"
    t.string  "nom"
  end

  create_table "partis", :force => true do |t|
    t.integer "mtl_id"
    t.string  "nom"
    t.integer "postes_en_avance"
  end

  create_table "postes", :force => true do |t|
    t.string "mtl_id" # Yes, this is a string: '00,00'
    t.string  "mtl_type"
    t.integer "arrondissement_id"
    t.integer "district_id"
    t.string  "nom"
    t.integer "nb_electeurs_inscrits"
    t.integer "nb_total_voix_recueillies"
    t.integer "nb_bulletins_rejetes"
    t.float   "taux_participation"
    t.integer "nb_bureaux_depouilles"
    t.integer "nb_bureaux_total"
    t.integer "candidat_en_avance_id"
  end

  create_table "sommaires", :force => true do |t|
    t.integer "nb_electeurs_inscrits"
    t.integer "nb_total_voix_recueillies"
    t.integer "nb_bulletins_rejetes"
    t.integer "nb_bureaux_depouilles"
    t.integer "nb_bureaux_total"
    t.float   "taux_participation"
    t.integer "conseillers_de_ville_en_avance"
    t.string  "date_heure_generation"
  end

end
