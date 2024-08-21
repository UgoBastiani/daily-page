class SuggestionsController < ApplicationController
  def index
    @suggestion = Suggestion.first
  end
  
  def add_to_favorites
    @suggestion = Suggestion.find(params[:id])
    current_user.favorites << @suggestion
    redirect_to @suggestion, notice: 'Suggestion was successfully added to favorites.'
  end
end
