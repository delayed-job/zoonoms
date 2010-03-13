class AddUsernameToUser < ActiveRecord::Migration
  def self.up
    add_column :users, :usernames, :string
  end

  def self.down
    remove_column :users, :usernames
  end
end
