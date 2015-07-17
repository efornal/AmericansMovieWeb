class CreateGeneroPeliculas < ActiveRecord::Migration
  def change
    create_table :genero_peliculas do |t|

      t.timestamps null: false
    end
  end
end
