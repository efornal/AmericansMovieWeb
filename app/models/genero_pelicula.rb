class GeneroPelicula < ActiveRecord::Base
  belongs_to :pelicula
  belongs_to :genero
end
