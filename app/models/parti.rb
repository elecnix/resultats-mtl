class Parti < ActiveRecord::Base
  has_one :candidat_maire
  has_many :candidat_maire_arrondissement
  has_many :candidats
  
  def to_s
    nom
  end
end
