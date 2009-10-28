class CandidatMaire < ActiveRecord::Base
  belongs_to :parti
  
  def pourcentage
    nb_voix_exprimees = CandidatMaire.find(:all).inject { |voix, maire| maire.nb_voix_obtenues }
    nb_voix_obtenues / nb_voix_exprimees
  end
end
