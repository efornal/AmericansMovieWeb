# Be sure to restart your server when you modify this file.

# Add new inflection rules using the following format. Inflections
# are locale specific, and you may define rules for as many different
# locales as you wish. All of these examples are active by default:
 ActiveSupport::Inflector.inflections(:en) do |inflect|
#   inflect.plural /^(ox)$/i, '\1en'
#   inflect.singular /^(ox)en/i, '\1'
#   inflect.irregular 'person', 'people'
  inflect.irregular 'socio', 'socios'
  inflect.irregular 'pelicula', 'peliculas'
  inflect.irregular 'genero', 'generos'
  inflect.irregular 'prestamo', 'prestamos'
  inflect.irregular 'puntaje', 'puntajes'
  inflect.irregular 'imagen', 'imagenes'
  inflect.irregular 'genero_pelicula', 'genero_peliculas'
  
#   inflect.uncountable %w( fish sheep )
 end

# These inflection rules are supported but not enabled by default:
# ActiveSupport::Inflector.inflections(:en) do |inflect|
#   inflect.acronym 'RESTful'
# end
