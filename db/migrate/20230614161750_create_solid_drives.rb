class CreateSolidDrives < ActiveRecord::Migration[7.0]
  def change
    create_table :solid_drives do |t|
      t.string :interface
      t.integer :capacity
      t.integer :read_speed
      t.integer :write_speed

      t.timestamps
    end
  end
end
