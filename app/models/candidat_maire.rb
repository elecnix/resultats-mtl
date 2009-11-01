class CandidatMaire < ActiveRecord::Base
  belongs_to :parti
  
  def pourcentage
    total = [CandidatMaire.find(:all).inject { |voix, maire| maire.nb_voix_obtenues }, Sommaire.find(:first).nb_total_voix_recueillies].max
    format("%.f", nb_voix_obtenues / total.to_f * 100) if total > 0
  end
  
  def to_s
    prenom + " " + nom
  end
end
