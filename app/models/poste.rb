class Poste < ActiveRecord::Base
  belongs_to :arrondissement
  belongs_to :district
end
