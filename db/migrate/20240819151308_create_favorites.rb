class CreateFavorites < ActiveRecord::Migration[7.1]
  def change
    create_table :favorites do |t|
      t.references :book, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.boolean :read

      t.timestamps
    end
  end
end
