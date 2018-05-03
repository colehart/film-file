# Create Films table to Film-File database
class CreateFilms < ActiveRecord::Migration[5.2]
  def change
    create_table :films do |t|
      t.text :title
      t.integer :year
      t.integer :box_office_sales

      t.timestamps
    end
  end
end
