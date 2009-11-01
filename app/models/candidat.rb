class Candidat < ActiveRecord::Base
  belongs_to :parti
  belongs_to :poste
  
  def pourcentage
    nb_voix_exprimees = poste.candidats.inject { |voix, candidat| candidat.nb_voix_obtenues }
    nb_voix_obtenues / nb_voix_exprimees if nb_voix_exprimees > 0
  end

  def position= pos
    @pos = pos
  end
  
  def position
    @pos
  end

  def to_s
    prenom + " " + nom
  end
end
