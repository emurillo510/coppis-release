class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.references :user, index: true
      t.text :content, :limit => 2000
      t.references :post, index: true

      t.timestamps
    end
  end
end
