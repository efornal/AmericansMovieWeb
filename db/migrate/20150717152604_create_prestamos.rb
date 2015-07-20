class CreatePrestamos < ActiveRecord::Migration
  def change
    create_table :prestamos do |t|
      t.belongs_to :pelicula, index: true
      t.belongs_to :socio, index: true
      t.datetime :devolucion
      t.datetime :created_at
      t.timestamps null: false
    end
  end
end
