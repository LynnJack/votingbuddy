class AddPollingHoursToUser < ActiveRecord::Migration
  def change
    add_column :users, :Polling_Hours, :string
  end
end
