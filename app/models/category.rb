class Category < ApplicationRecord
  has_many :books

  validates :name, presence: true
  validates :mood, presence: true
end
