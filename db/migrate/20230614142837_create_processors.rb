class CreateProcessors < ActiveRecord::Migration[7.0]
  def change
    create_table :processors do |t|
      t.integer :core_count
      t.integer :threads
      t.float :min_freq
      t.float :max_freq
      t.integer :tdp

      t.timestamps
    end
  end
end
