class CreateStorePrices < ActiveRecord::Migration[5.1]
  def change
    create_table :store_prices do |t|
      t.references :item
      t.references :store
      t.float      :price

      t.timestamps
    end
  end
end
