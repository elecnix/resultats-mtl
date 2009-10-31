class PosteController < ApplicationController
  def index
    if !params['arrondissement_id'].nil?
      if params['arrondissement_id'] == "default"
        arrondissement = Affichage.find(:first).arrondissement
        logger.info "Arrondissement par défaut: #{arrondissement.inspect}"
      else
        arrondissement = Arrondissement.find_by_id(params['arrondissement_id'])
      end
    elsif !params['nom'].nil?
      arrondissement = Arrondissement.find(:all, :conditions => "nom LIKE '%#{params['nom']}%'")[0]
    end
    if arrondissement
      @poste = arrondissement.postes[rand(arrondissement.postes.size)]
    else
      @arrondissement = Arrondissement.find(:all, :limit => 3, :order => 'random()', :conditions => 'mtl_id > 0')[0]
      @poste = Poste.find(:all, :limit => 3, :order => 'random()', :conditions => 'mtl_id > 0')[0]
    end
    logger.info "Affiche poste: #{@poste.inspect} dans #{@arrondissement.inspect}"
    render :layout => false
  end

end

