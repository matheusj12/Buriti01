class CreateStockControls < ActiveRecord::Migration[7.2]
  def change
    create_table :stock_controls do |t|
      t.references :impressora, null: false, foreign_key: true
      t.integer :quantity
      t.string :operation_type

      t.timestamps
    end
  end
end
