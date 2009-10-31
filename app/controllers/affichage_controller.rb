class AffichageController < ApplicationController
  def index
    @affichage = Affichage.find(:first)
    logger.info "Affichage: #{@affichage}"
  end

  def update
    aff = Affichage.find_by_id(params['id'])
    aff.update_attributes(params[:affichage])
    aff.save!
    redirect_to affichage_index_path
  end
end
