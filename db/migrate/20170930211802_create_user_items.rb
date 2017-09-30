class CreateUserItems < ActiveRecord::Migration[5.1]
  def change
    create_table :user_items do |t|
      t.references :user
      t.references :item

      t.timestamps
    end
  end
end
