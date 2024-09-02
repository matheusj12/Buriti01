class Client < ApplicationRecord
  has_many :vendas

  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :phone, presence: true
end
