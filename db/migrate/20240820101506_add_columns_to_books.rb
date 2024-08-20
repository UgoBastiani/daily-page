class AddColumnsToBooks < ActiveRecord::Migration[7.1]
  def change
    add_column :books, :description, :string
    add_column :books, :thumbnail, :string
  end
end
