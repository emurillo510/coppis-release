class AddTwitterAvatarToUser < ActiveRecord::Migration
  def change
  	add_column :users, :twitter_avatar, :string
  end
end
