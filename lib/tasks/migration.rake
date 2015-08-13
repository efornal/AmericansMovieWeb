# -*- coding: utf-8 -*-
require 'fileutils'

namespace :migration do

  namespace :db do

    # Considera el siguiente orden de encabezado CSV:
    # CÓDIGO | TITULO | DURAC. | DIRECTOR | ORIGEN
    desc 'Import data from csv: rake migration:db:import_from_csv file=db/file.csv'
    task :import_from_csv => [:environment] do
      
      file_name = ENV['file']||nil

      if file_name == nil
         puts "Arguments error. Use: 'rake migration:db:import_from_csv file=db/file.csv'"
         exit (-1)
      end
      
      require 'csv'
      
      CSV_PATH_FILE = file_name
      CSV_COL_SEP = '|'
      CSV_HEADERS = true

      CSV.foreach( CSV_PATH_FILE,
                   col_sep: CSV_COL_SEP,
                   headers: CSV_HEADERS) do |row|

        p = Hash.new
        # map from csv file
        p['codigo']   = row[0]
        p['titulo']   = row[1]
        p['duracion'] = row[2]
        p['director'] = row[3]
        p['origen']   = row[4]

        if pelicula = Pelicula.create(p)
          puts "Created!: #{pelicula.codigo}"
        else
          puts "ERROR!:   #{pelicula.codigo}"
        end
  
      end

    end

  end

end
