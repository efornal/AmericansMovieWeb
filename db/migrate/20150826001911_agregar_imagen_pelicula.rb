class AgregarImagenPelicula < ActiveRecord::Migration
  def up
    add_attachment :peliculas, :imagen
  end

  def down
    remove_attachment :peliculas, :imagen
  end
end
