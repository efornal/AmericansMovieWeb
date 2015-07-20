class Socio < ActiveRecord::Base

  has_many :prestamos
  has_many :peliculas, :through => :prestamos

  has_many :puntajes
  has_many :peliculas, :through => :puntajes

end
