class Arrondissement < ActiveRecord::Base
  has_many :candidat_maire_arrondissements
end
