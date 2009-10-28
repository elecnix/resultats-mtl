class MayorController < ApplicationController
  def index
  end

  def results
    @maires = CandidatMaire.find(:all, :order => "nb_voix_obtenues DESC")
    render :layout => false
  end
end
