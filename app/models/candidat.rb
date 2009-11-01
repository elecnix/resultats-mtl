class Candidat < ActiveRecord::Base
  belongs_to :parti
  belongs_to :poste
  
  def pourcentage
    total = poste.nb_total_voix_recueillies
    format("%.f", nb_voix_obtenues / total.to_f * 100) if total > 0
  end

  def position= pos
    @pos = pos
  end
  
  def position
    @pos
  end

  def to_s
    if !parti.nil? && !parti.nom.nil? && parti.nom.include?("Projet") && poste.mtl_type == "CV" && !poste.district.nil? && poste.district.nom == "Jeanne-Mance"
      return "Nima Machouf + #{prenom} #{nom}"
    end
    prenom + " " + nom
  end
end
