# encoding: utf-8

class District < ActiveRecord::Base
  has_many :postes
  belongs_to :arrondissement
  
  def to_s
    nom
  end
end
