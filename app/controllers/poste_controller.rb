class PosteController < ApplicationController
  def index
    default = Affichage.find(:first).arrondissement
    if !params['arrondissement_id'].nil?
      if params['arrondissement_id'] == "default"
        arrondissement = default
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
      @poste = Poste.find(:all, :limit => 3, :order => 'random()', :conditions => "mtl_id > 0 and arrondissement_id != #{default.id}")[0]
    end
    logger.info "Affiche poste: #{@poste.inspect} dans #{arrondissement.inspect}"
    render :layout => false
  end

end

