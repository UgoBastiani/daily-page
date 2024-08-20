class Book < ApplicationRecord
  belongs_to :category
  has_many :suggestions
  has_many :favorites

  validates :title, presence: true
  validates :author, presence: true
  validates :number_of_pages, numericality: { only_integer: true, greater_than: 0 }
end
