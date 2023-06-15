class CreateHardDrives < ActiveRecord::Migration[7.0]
  def change
    create_table :hard_drives do |t|
      t.string :form_factor
      t.integer :capacity
      t.integer :cache

      t.timestamps
    end
  end
end
