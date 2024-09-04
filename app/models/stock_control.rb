class StockControl < ApplicationRecord
  has_many :stock_movements, dependent: :destroy
  belongs_to :impressora

  # Validações
  validates :ciano, :magenta, :amarelo, :preto, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :operation_type, inclusion: { in: %w(entrada saída) }

  # Validação da presença do campo impressora_id
  validates :impressora_id, presence: true
end
