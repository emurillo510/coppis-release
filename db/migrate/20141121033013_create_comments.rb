class CreateComments < ActiveRecord::Migration
  def change
    create_table :comment do |t|
      t.text :comment

      t.timestamps
    end
  end
end
