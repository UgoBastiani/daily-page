class CreateBooks < ActiveRecord::Migration[7.1]
  def change
    create_table :books do |t|
      t.references :category, null: false, foreign_key: true
      t.date :publishing_date
      t.string :title
      t.string :author
      t.integer :number_of_pages
      t.references :genre, null: false, foreign_key: true

      t.timestamps
    end
  end
end
