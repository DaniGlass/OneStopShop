class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.references :category
      t.string :name
      t.string :brand
      t.text   :description
      t.string :image_url
      t.string :tags

      t.timestamps
    end
  end
end
