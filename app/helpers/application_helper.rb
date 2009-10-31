# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  def html_class_voix_majorite_poste(voix)
    return if voix.nil?
    return 'avance_critique' if voix < 100
    return 'avance_attention' if voix < 500
    return 'avance_bonne'
  end
end
