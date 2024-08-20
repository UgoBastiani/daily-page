class Book < ApplicationRecord
  belongs_to :category
  has_many :suggestions
  has_many :favorites

  validates :title, presence: true
  validates :author, presence: true
  validates :number_of_pages, presence: true, numericality: { only_integer: true, greater_than: 0 }
  validates :publishing_date, presence: true
end
