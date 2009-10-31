class Poste < ActiveRecord::Base
  belongs_to :arrondissement
  belongs_to :district
  has_many :candidats

  def candidats_projetmontreal
    candidats.select { |c| c.parti.nom.include? 'Projet' }
  end

  def to_s
    nom
  end
end
