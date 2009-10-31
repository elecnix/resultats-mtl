class LeadController < ApplicationController
  def index
  end

  def results
    @candidats = []
    parti = Parti.find(:first, :conditions => "nom LIKE '%Projet%'")
    if parti
      @candidats = parti.candidats
      @candidats = @candidats.sort_by(&:nb_voix_obtenues).reverse![0..9]
    end
    render :layout => false
  end
end
