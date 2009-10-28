class BoroughController < ApplicationController
  def index
  end

  def results
    if !params['id'].nil?
      @arrondissement = Arrondissement.find_by_id(params['id'])
    elsif !params['nom'].nil?
      @arrondissement = Arrondissement.find(:all, :conditions => "nom LIKE '%#{params['nom']}%'")[0]
    else
      @arrondissement = Arrondissement.find(:all, :limit => 3, :order => 'random()', :conditions => 'mtl_id > 0')[0]
    end
    #@arrondissement = Arrondissement.find(:first)
    render :layout => false
  end
end
