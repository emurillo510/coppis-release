class CreateBrands < ActiveRecord::Migration
  def change
    create_table :brands do |t|
      t.string :name
      t.string :location
      t.string :website
      t.text :description
      t.string :img
      t.timestamps
    end
  end
end
