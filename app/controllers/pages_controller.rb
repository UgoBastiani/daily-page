class PagesController < ApplicationController
  def home
    @book = Book.first
  end

  def questions

  end

  def roulette
    @favorites = current_user.favorites
  end
end
