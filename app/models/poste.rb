# encoding: utf-8

class Poste < ActiveRecord::Base
  belongs_to :arrondissement
  belongs_to :district
  has_many :candidats
  belongs_to :candidat_en_avance, :class_name => 'Candidat'

  def candidats_projetmontreal
    candidats.select { |c| c.parti.nom.include? 'Projet' }
  end

  def to_s
    nom
  end
end
