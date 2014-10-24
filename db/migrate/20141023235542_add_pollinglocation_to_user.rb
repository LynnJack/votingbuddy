class AddPollinglocationToUser < ActiveRecord::Migration
  def change
    add_column :users, :Polling_location, :string
  end
end
