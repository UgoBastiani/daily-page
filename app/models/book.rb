class Book < ApplicationRecord
  belongs_to :category
  has_many :suggestions
  has_many :favorites
end
