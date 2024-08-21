class Suggestion < ApplicationRecord
  belongs_to :book
  belongs_to :user

  validates :book_id, presence: true
  validates :user_id, presence: true

  def self.dates_for_current_user(current_user)
    where(user_id: current_user.id)          # Filter by current user's ID
      .pluck(:created_at)                    # Pluck the 'created_at' column
      .map(&:to_date)                        # Convert datetime to date
      .uniq                                 # Remove duplicate dates
  end
end
