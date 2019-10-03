class Post < ActiveRecord::Migration[6.0]
  def change
    create_table :post do |t|
      t.integer :user_id
      t.text :caption
      
      t.timestamps
    end
  end
end
