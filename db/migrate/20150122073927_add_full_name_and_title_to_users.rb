class AddFullNameAndTitleToUsers < ActiveRecord::Migration
  def change
	 remove_column :users, :full_name
	 remove_column :users, :title
    add_column :users, :full_name, :string
    add_column :users, :title, :string
  end
end
