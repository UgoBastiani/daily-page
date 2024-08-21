class FavoritesController < ApplicationController
  def create
    @favorite = Favorite.new(favorite_params)
    @favorite.user = current_user
    @favorite.book = Book.find(params[:book_id])
    @favorite.save
    redirect_to favorite_path
  end

  def index
    @favorites = Favorite.where(user: current_user)
  end

  private

  def favorite_params
    params.require(:favorite).permit(:read)
  end
end
