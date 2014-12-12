class AddQueryIdToBrands < ActiveRecord::Migration
  def change
    add_column :brands, :query, :string
  end
end
