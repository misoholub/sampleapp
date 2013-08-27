class AddIndexToUsersEmail < ActiveRecord::Migration
  def change
    add_index :users, :email, :unique => true # same as unique: true
  end
end
