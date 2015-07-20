class CreateGeneroPeliculas < ActiveRecord::Migration
  def change
    create_table :genero_peliculas do |t|
      t.belongs_to :pelicula, index: true
      t.belongs_to :genero, index: true
      t.timestamps null: false
    end
  end
end
