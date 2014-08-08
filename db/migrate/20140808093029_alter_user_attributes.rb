class AlterUserAttributes < ActiveRecord::Migration
  def change
  	remove_column :favours, :poster_id, :integer
  	remove_column :favours, :acceptor_id, :integer
  	add_column :favours, :user_id, :integer
  end
end
