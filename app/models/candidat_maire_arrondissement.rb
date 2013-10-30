# encoding: utf-8

class CandidatMaireArrondissement < ActiveRecord::Base
  belongs_to :parti
  belongs_to :arrondissement
  
  def to_s
    prenom + " " + nom
  end
end
