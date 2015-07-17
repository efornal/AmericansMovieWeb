class Prestamo < ActiveRecord::Base
  #belongs_to :pelicula
  belongs_to :pelicula
  belongs_to :socio
end
