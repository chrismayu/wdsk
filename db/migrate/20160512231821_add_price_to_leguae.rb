class AddPriceToLeguae < ActiveRecord::Migration
  def change
    remove_column :leagues, :price 
    add_column :leagues, :price, :decimal, :precision => 8, :scale => 2 
  end
end
