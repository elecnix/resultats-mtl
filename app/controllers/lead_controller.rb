class LeadController < ApplicationController
  def index
  end

  def results
    @candidats = []
    parti = Parti.find(:first, :conditions => "nom LIKE '%Projet%'")
    if parti
      @candidats = parti.candidats_en_avance.reverse![0..6]
    end
    render :layout => false
  end
end
