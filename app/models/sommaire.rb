# encoding: utf-8

class Sommaire < ActiveRecord::Base

  def partis_en_avance_au_conseil_de_ville
    Parti.find(:all).sort { |a,b| b.conseillers_de_ville_en_avance.size <=> a.conseillers_de_ville_en_avance.size }[0..2]
  end

end
