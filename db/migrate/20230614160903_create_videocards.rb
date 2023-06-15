class CreateVideocards < ActiveRecord::Migration[7.0]
  def change
    create_table :videocards do |t|
      t.float :memory_size
      t.string :memory_type
      t.integer :freq
      t.string :interface

      t.timestamps
    end
  end
end
