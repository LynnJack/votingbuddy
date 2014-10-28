class FixColumnName < ActiveRecord::Migration
  def change
     rename_column :users, :Polling_location, :polling_location
     rename_column :users, :Polling_Hours, :polling_hours
  end
end


