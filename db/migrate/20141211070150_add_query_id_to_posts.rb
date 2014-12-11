class AddQueryIdToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :query, :string
  end
end
