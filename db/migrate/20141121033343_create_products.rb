class CreateProducts < ActiveRecord::Migration
  def change
    create_table :product do |t|
      t.string :title
      t.text :detail
      t.decimal :price
      t.string :img

      t.timestamps
    end
  end
end
