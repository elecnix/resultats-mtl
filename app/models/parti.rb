class Parti < ActiveRecord::Base
  has_one :candidat_maire
  has_many :candidat_maire_arrondissement
  has_many :candidats
  
  def candidats_en_avance
    candidats = Poste.find(:all).collect{|poste|poste.candidat_en_avance.parti == self ? poste.candidat_en_avance : nil }.compact!.sort_by(&:nb_voix_obtenues).reverse!
    p = 0
    candidats.each{|c| c.position = p+=1}
    candidats
  end
  
  def to_s
    if nom.include? "Harel" ; return "Vision Montréal" ; end
    if nom.include? "Tremblay" ; return "Union Montréal" ; end
    if nom.include? "Sullivan" ; return "Montréal-Ville-Marie" ; end
    nom
  end
  
  def html_class
    to_s.gsub(/ /, "")
  end
end
