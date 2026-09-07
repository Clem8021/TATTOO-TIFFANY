class HomeController < ApplicationController
  # Le modèle Tattoo n'existe pas encore dans l'app : tant qu'il n'est pas
  # créé, on affiche simplement les blocs de démonstration du portfolio.
  #
  # Quand tu créeras le modèle (ex: rails g model Tattoo title:string
  # theme:string caption:string), ajoute aussi le champ "theme" si tu
  # veux le regroupement automatique par famille de pièces :
  #   rails g migration AddThemeAndCaptionToTattoos theme:string caption:string
  #
  # Ce controller détectera alors automatiquement le modèle et le champ.
  def index
    @tattoo_clusters =
      if defined?(Tattoo) && Tattoo.column_names.include?("theme")
        Tattoo.where.not(theme: nil).group_by(&:theme)
      else
        {}
      end
  end
end