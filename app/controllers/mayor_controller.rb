class MayorController < ApplicationController
  def index
  end

  def results
    @maires = CandidatMaire.find(:all)
    render :layout => false
  end
end
