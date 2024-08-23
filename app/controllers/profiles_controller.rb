class ProfilesController < ApplicationController
  def show
    @suggestions = current_user.suggestions
    @books_read = current_user.favorites.where(read: true)
    @pages_read = current_user.favorites.where(read: true).includes(:book).sum { |favorite| favorite.book.number_of_pages }

  end
end
