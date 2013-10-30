# encoding: utf-8

class MayorController < ApplicationController
  def index
  end

  def results
    @maires = CandidatMaire.find(:all, :order => "nb_voix_obtenues DESC")
    @sommaire = Sommaire.find(:first)
    render :layout => false
  end
end
