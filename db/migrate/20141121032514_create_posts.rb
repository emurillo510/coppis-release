class CreatePosts < ActiveRecord::Migration
  def change
    create_table :post do |t|
      t.string :title
      t.text :description
      t.integer :vote_count
      t.string :img

      t.timestamps
    end
  end
end
