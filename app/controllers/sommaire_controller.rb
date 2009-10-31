class SommaireController < ApplicationController
  def index
    @sommaire = Sommaire.find(:first)
    @partis = Parti.find(:all, :limit => 3).sort { |a,b| b.postes_en_avance <=> a.postes_en_avance }
    autres = Parti.new(:nom => "Autres")
    autres.postes_en_avance = @partis.inject(0) {|sum, n| sum + n.postes_en_avance.to_i }
    @partis << autres
    render :layout => false
  end

end
