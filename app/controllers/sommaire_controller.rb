# encoding: utf-8

class SommaireController < ApplicationController
  def index
    @sommaire = Sommaire.find(:first)
    
    @partis = Parti.find(:all).sort { |a,b| b.postes_en_avance.to_i <=> a.postes_en_avance.to_i }[0..2]
    autres = Parti.new(:nom => "Autres")
    autres.postes_en_avance = @partis.inject(0) {|sum, n| sum + n.postes_en_avance.to_i }
    @partis << autres
    
    render :layout => false
  end

end
