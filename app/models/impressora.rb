class Impressora < ApplicationRecord
  has_one_attached :foto
  has_one_attached :toner_foto
  validates :toner_quantity, numericality: { greater_than_or_equal_to: 0 }
  validates :stock, numericality: { greater_than_or_equal_to: 0 }
end
