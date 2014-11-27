class AddImagesColumnToPost < ActiveRecord::Migration
  def self.up
    add_attachment :posts, :image
  end

  def self.down
    remove_attachment :post, :image
  end
end