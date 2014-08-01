class CreateFavours < ActiveRecord::Migration
  def change
    create_table :favours do |t|
      t.text :description
      t.string :title
      t.string :location
      t.float :price
      t.integer :poster_id
      t.integer :acceptor_id
      
      t.timestamps
    end
  end
end
