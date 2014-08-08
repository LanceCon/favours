class CreateAcceptances < ActiveRecord::Migration
  def change
    create_table :acceptances do |t|
      t.integer :user_id
      t.integer :favour_id
      
      t.timestamps
    end
  end
end
