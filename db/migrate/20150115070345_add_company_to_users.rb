class AddCompanyToUsers < ActiveRecord::Migration
  def change
	  add_column :users, :full_name, :string
	  add_column :users, :position, :string
	  add_column :users, :company, :string

	  add_index :users, :full_name
	  add_index :users, :position
	  add_index :users, :company
  end
end
