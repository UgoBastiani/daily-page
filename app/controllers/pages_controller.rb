class PagesController < ApplicationController
  def home
    @book = Book.first
  end
end
