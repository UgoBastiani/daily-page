class SuggestionsController < ApplicationController

  def index
    @suggestion_dates = Suggestion.dates_for_current_user(current_user).to_json
    @books = Book.all

    if params[:mood].present?
      @books = @books.joins(:category).where("categories.mood ILIKE ?", params[:mood])
    end

    if params[:pages].present?
      case params[:pages].downcase
      when 'short'
        @books = @books.where('number_of_pages < ?', 250)
      when 'medium'
        @books = @books.where('number_of_pages >= ? AND number_of_pages <= ?', 250, 400)
      when 'big'
        @books = @books.where('number_of_pages > ?', 400)
      when 'anyway'
      end
    end

    if params[:age].present?
      case params[:age].downcase
      when 'old'
        @books = @books.where('publishing_date < ?', Date.new(2010))
      when 'new'
        @books = @books.where('publishing_date >= ?', Date.new(2010))
      end
    end
    @book = @books.sample
  end

  def add_to_favorites
    @suggestion = Suggestion.find(params[:id])
    current_user.favorites << @suggestion
    redirect_to @suggestion, notice: 'Suggestion was successfully added to favorites.'
  end
end
