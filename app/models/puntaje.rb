class Puntaje < ActiveRecord::Base
  belongs_to :pelicula
  belongs_to :socio
end
