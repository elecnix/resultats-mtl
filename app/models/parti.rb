# encoding: utf-8

class Parti < ActiveRecord::Base
  attr_accessible :nom
  has_one :candidat_maire
  has_many :candidat_maire_arrondissement
  has_many :candidats
  
  def conseillers_de_ville_en_avance
    candidats_en_avance.select{|candidat| candidat.poste.mtl_type == 'CV'}
  end
  
  def candidats_en_avance
    candidats = Poste.find(:all).collect{|poste|poste.candidat_en_avance.parti == self ? poste.candidat_en_avance : nil }.compact!.sort_by(&:nb_voix_obtenues).reject{|candidat| candidat.nb_voix_obtenues == 0}.reverse!
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
