class Poste < ActiveRecord::Base
  belongs_to :arrondissement
  belongs_to :district
  has_many :candidats
end
