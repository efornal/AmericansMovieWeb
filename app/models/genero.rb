class Genero < ActiveRecord::Base
  has_many :genero_peliculas
  has_many :peliculas, :through => :genero_peliculas
end
