class CreateMemoryKits < ActiveRecord::Migration[7.0]
  def change
    create_table :memory_kits do |t|
      t.integer :capacity
      t.integer :module_count
      t.string :form_factor
      t.string :memory_type
      t.integer :speed
      t.string :timing

      t.timestamps
    end
  end
end
