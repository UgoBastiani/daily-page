class Favorite < ApplicationRecord
  belongs_to :book
  belongs_to :user

  validates :book_id, presence: true
  validates :user_id, presence: true
  validates :read, inclusion: { in: [true, false] }
end
