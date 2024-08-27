class FavoritesController < ApplicationController
  before_action :set_favorite, only: [:mark_as_read, :mark_as_unread, :destroy]

  def create
    @favorite = Favorite.new
    @favorite.user = current_user
    @favorite.book = Book.find(params[:book_id])
    @favorite.save
  end

  def index
    @favorites = Favorite.where(user: current_user)
  end


  def mark_as_read
    @favorite.update(read: true)
    redirect_to favorites_path(anchor: 'justified-tabpanel-0'), notice: 'The book has been marked as read.'
  end

  def mark_as_unread
    @favorite.update(read: false)
    redirect_to favorites_path(anchor: 'justified-tabpanel-1'), notice: 'The book has been marked as unread.'
  end

  def destroy
    @favorite.destroy
    redirect_to favorites_path
  end

  private

  def set_favorite
    @favorite = Favorite.find(params[:id])
  end

  def favorite_params
    params.require(:favorite).permit(:read)
  end
end
