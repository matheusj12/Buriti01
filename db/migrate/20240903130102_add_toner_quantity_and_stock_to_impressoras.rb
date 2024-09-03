class AddTonerQuantityAndStockToImpressoras < ActiveRecord::Migration[7.2]
  def change
    add_column :impressoras, :toner_quantity, :integer
    add_column :impressoras, :stock, :integer
  end
end
