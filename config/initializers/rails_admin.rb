require 'i18n'
I18n.default_locale = :en

RailsAdmin.config do |config|

  config.excluded_models << "GeneroPelicula"
  config.excluded_models << "Puntaje"
  
  config.model Genero do
    field :nombre
    field :peliculas do
      nested_form false
    end
  end

  config.model Pelicula do
    list do
      field :codigo
      field :titulo
      field :duracion
      field :stock
    end
    edit do
      field :codigo
      field :titulo
      field :director
      field :origen
      field :duracion
      field :stock
      field :imagen
      field :generos
    end
    show do
      field :codigo
      field :titulo
      field :director
      field :origen
      field :duracion
      field :stock
      field :imagen
      field :generos
    end
    field :generos do
      nested_form false
    end
    field :socios do
      nested_form false
    end
  end

  config.model Socio do
    field :nro_socio
    field :apellido
    field :nombre
    field :peliculas do
      nested_form false
    end
  end

  ### Popular gems integration
  ## == Devise ==
  # config.authenticate_with do
  #   warden.authenticate! scope: :user
  # end
  # config.current_user_method(&:current_user)

  ## == Cancan ==
  # config.authorize_with :cancan

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end
end
