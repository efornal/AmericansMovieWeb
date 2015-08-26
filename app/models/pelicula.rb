class Pelicula < ActiveRecord::Base
  has_attached_file :imagen,
                    :use_timestamp => false, 
                    :styles => { :medium => "200x300>", :thumb => "50x75>" },
                    :default_url => "/images/:style/missing.png",
                    :url => "/system/:class/:attachment/:style/:id.:extension",
                    :path => ":rails_root/public/system/:class/:attachment/:style/:id.:extension"

  validates_attachment_content_type :imagen,
                                    :content_type => /\Aimage\/.*\Z/
  has_many :genero_peliculas
  has_many :generos, through: :genero_peliculas

  has_many :puntajes
  has_many :socios, through: :puntajes

  has_many :prestamos
  has_many :socios, through: :prestamos

end
