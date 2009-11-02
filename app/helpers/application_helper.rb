# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  def html_class_voix_majorite(voix, critique, attention)
    return if voix.nil?
    return if voix == 0
    return 'avance_critique' if voix < critique
    return 'avance_attention' if voix < attention
    return 'avance_bonne'
  end
  def html_class_voix_majorite_poste(voix)
    html_class_voix_majorite(voix, 100, 500)
  end
  def html_class_voix_majorite_maire(voix)
    html_class_voix_majorite(voix, 1000, 5000)
  end
end
