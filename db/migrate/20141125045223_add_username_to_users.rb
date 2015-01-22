class AddUsernameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :username, :string
#	 add_column :users, :full_name, :string
#	 add_column :users, :title, :string
  end
end
