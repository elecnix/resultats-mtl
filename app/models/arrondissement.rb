# encoding: utf-8

class Arrondissement < ActiveRecord::Base
  has_many :candidat_maire_arrondissements
  has_many :postes
#  has_many :maires, :class_name => 'Poste', :conditions => { "type = 'MC'" }

  def mairie
    postes.find_by_mtl_type('MC')
  end

  def to_s
    nom
  end
end
