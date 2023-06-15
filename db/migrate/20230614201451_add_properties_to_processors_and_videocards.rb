class AddPropertiesToProcessorsAndVideocards < ActiveRecord::Migration[7.0]
  def change
    add_column :processors, :properties, :json
    add_column :videocards, :properties, :json
  end
end
