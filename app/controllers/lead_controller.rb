class LeadController < ApplicationController
  def index
  end

  def results
    @candidats = []
    parti = Parti.find(:first, :conditions => "nom LIKE '%Projet%'")
    if parti
      candidats_par_page = 6
      @candidats = parti.candidats_en_avance
      debut = session[:lead_start] ? (session[:lead_start] + candidats_par_page) : 1
      debut = 1 if debut > @candidats.size
      fin = debut + candidats_par_page - 2
      logger.info "Leads #{debut} @ #{fin} / #{@candidats.size}"
      @candidats = @candidats[(debut-1)..fin]
      session[:lead_start] = debut
    end
    render :layout => false
  end
end
