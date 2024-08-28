class PagesController < ApplicationController
  def home
    @book = Book.first
  end

  def questions

  end

  def roulette
    @favorite_books = []
    current_user.favorites.where(read: false).each do |favorite|
      @favorite_books << favorite.book
    end
  end
end
