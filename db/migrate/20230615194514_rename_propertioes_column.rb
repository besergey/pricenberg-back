class RenamePropertioesColumn < ActiveRecord::Migration[7.0]
  def change
    rename_column :processors, :properties, :additional_properties
    rename_column :videocards, :properties, :additional_properties
  end
end
