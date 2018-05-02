# adding Genre ID column to Film tables within Database for new association
class AddGenreIdToFilms < ActiveRecord::Migration[5.2]
  def change
    # table name in which we are adding column, name of column, data type
    add_column :films, :genre_id, :integer
  end
end
