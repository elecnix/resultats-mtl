class ReverseEngineer < ActiveRecord::Migration
  def up
    create_table :sommaires do |t|
      t.integer :nb_electeurs_inscrits
      t.integer :nb_total_voix_recueillies
      t.integer :nb_bulletins_rejetes
      t.integer :nb_bureaux_depouilles
      t.integer :nb_bureaux_total
      t.float :taux_participation
      t.integer :conseillers_de_ville_en_avance
      t.string :date_heure_generation
    end
    create_table :arrondissements do |t|
      t.integer :mtl_id
      t.string :nom
    end
    create_table :partis do |t|
      t.integer :mtl_id
      t.string :nom
      t.integer :postes_en_avance
    end
    create_table :districts do |t|
      t.integer :mtl_id
      t.string :nom
    end
    create_table :candidats do |t|
      t.integer :mtl_id
      t.string :nom
      t.string :prenom
      t.integer :nb_voix_obtenues
      t.integer :nb_voix_majorite
      t.integer :parti_id
      t.integer :poste_id
    end
    create_table :candidat_maires do |t|
      t.integer :mtl_id
      t.string :nom
      t.string :prenom
      t.integer :nb_voix_obtenues
      t.integer :nb_voix_majorite
      t.integer :parti_id
    end
    create_table :candidat_maire_arrondissements do |t|
      t.integer :mtl_id
      t.integer :arrondissement_id
      t.integer :parti_id
      t.string :nom
      t.string :prenom
      t.integer :nb_voix_obtenues
    end
    create_table :postes do |t|
      t.string :mtl_id # Yes, this is a string: '00,00'
      t.string :mtl_type
      t.integer :arrondissement_id
      t.integer :district_id
      t.string :nom
      t.integer :nb_electeurs_inscrits
      t.integer :nb_total_voix_recueillies
      t.integer :nb_bulletins_rejetes
      t.float :taux_participation
      t.integer :nb_bureaux_depouilles
      t.integer :nb_bureaux_total
      t.integer :candidat_en_avance_id
    end
    create_table :affichages do |t|
      t.integer :arrondissement_id
    end
  end

  def down
    drop_table :sommaires
    drop_table :arrondissements
    drop_table :partis
    drop_table :districts
    drop_table :postes
    drop_table :candidats
    drop_table :candidat_maires
    drop_table :candidat_maire_arrondissements
    drop_table :affichages
  end
end
