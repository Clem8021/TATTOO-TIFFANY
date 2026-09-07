class AddThemeAndCaptionToTattoos < ActiveRecord::Migration[8.0]
  def change
    add_column :tattoos, :theme, :string
    add_column :tattoos, :caption, :string
  end
end
