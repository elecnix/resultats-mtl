class OverviewController < ApplicationController
  def index
    @maires = CandidatMaire.find(:all)
  end

end
