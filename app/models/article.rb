class Article < ApplicationRecord
  has_one_attached :pdf
  has_one_attached :image
end
