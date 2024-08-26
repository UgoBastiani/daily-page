class PagesController < ApplicationController
  def home
    @book = Book.first
  end

  def questions
    
  end
end
