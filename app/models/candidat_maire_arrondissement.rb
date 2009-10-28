class CandidatMaireArrondissement < ActiveRecord::Base
  belongs_to :parti
  belongs_to :arrondissement
end
