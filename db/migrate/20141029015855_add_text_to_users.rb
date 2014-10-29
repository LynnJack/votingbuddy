class AddTextToUsers < ActiveRecord::Migration
  def change
    add_column :users, :text, :string
  end
end
