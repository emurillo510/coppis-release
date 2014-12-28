class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :product_name
      t.string :brand_name
      t.string :user_name

      t.text :description
      t.text :comment
      t.integer :upvotes_count , default: 0
      t.integer :comment_count
      t.references :user
      t.references :brand
      t.references :product
      t.references :comment
      t.timestamps
    end
  end
end
