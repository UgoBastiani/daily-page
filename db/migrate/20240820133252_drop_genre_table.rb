class DropGenreTable < ActiveRecord::Migration[7.0]
  def up
    remove_foreign_key :books, :genres

    remove_reference :books, :genre, index: true

    drop_table :genres
  end

  def down
    create_table :genres do |t|
      t.string :name
      t.timestamps
    end

    add_reference :books, :genre, foreign_key: true
  end
end
