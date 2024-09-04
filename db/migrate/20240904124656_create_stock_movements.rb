class CreateStockMovements < ActiveRecord::Migration[7.2]
  def change
    create_table :stock_movements do |t|
      t.references :stock_control, null: false, foreign_key: true
      t.integer :quantity
      t.string :movement_type

      t.timestamps
    end
  end
end
