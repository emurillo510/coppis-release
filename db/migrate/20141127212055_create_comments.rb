class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.references :user, index: true
      t.references :post, index: true
      t.text :comment
      t.integer :vote_count
      t.integer :comment_count

      t.timestamps
    end
  end
end
