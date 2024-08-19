class Book < ApplicationRecord
  belongs_to :category
  belongs_to :genre
  has_many :suggestions
  has_many :favorites
end
