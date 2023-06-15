class CreatePrices < ActiveRecord::Migration[7.0]
  def change
    create_table :prices do |t|
      t.references :product, null: false, foreign_key: true
      t.integer :shop, null: false
      t.float :price, null: false
      t.string :link, null: false

      t.timestamps
    end
  end
end
