class Pelicula < ActiveRecord::Base
  
 has_many :prestamos
 has_many :puntajes
 has_many :genero_peliculas

 has_many :generos, :through => :genero_peliculas
 has_many :socios, :through => :prestamos
 has_many :socios, :through => :puntajes
 
end
