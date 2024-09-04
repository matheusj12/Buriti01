class StockMovement < ApplicationRecord
  belongs_to :stock_control

  validates :quantity, presence: true
  validates :movement_type, presence: true, inclusion: { in: %w[entrada saída] }
end
