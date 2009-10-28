class Parti < ActiveRecord::Base
  has_one :candidat_maire
  has_many :candidat_maire_arrondissement
end
