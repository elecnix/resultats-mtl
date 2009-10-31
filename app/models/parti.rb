class Parti < ActiveRecord::Base
  has_one :candidat_maire
  has_many :candidat_maire_arrondissement
  has_many :candidats
  
  def to_s
    if nom.include? "Harel" ; return "Vision Montréal" ; end
    if nom.include? "Tremblay" ; return "Union Montréal" ; end
    nom
  end
end
