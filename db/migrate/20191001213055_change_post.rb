class ChangePost < ActiveRecord::Migration[6.0]
  def change
    rename_table :post, :posts
  end
end
