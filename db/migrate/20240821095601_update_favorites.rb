class UpdateFavorites < ActiveRecord::Migration[7.1]
  def change
    change_column_default :favorites, :read, from: nil, to: false
  end
end
