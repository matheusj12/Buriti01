class StockControl < ApplicationRecord
  belongs_to :impressora

  validates :quantity, numericality: { greater_than_or_equal_to: 0 }
  validates :operation_type, inclusion: { in: %w[entrada saída] }

  before_save :update_impressora_stock

  private

  def update_impressora_stock
    if operation_type == 'entrada'
      impressora.increment!(:stock, quantity)
    elsif operation_type == 'saída'
      impressora.decrement!(:stock, quantity)
    end
  end
end
