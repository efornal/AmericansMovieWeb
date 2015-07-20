class CreatePuntajes < ActiveRecord::Migration
  def change
    create_table :puntajes do |t|
      t.belongs_to :pelicula, index: true
      t.belongs_to :socio, index: true
      t.integer :nro_puntaje
      t.datetime :created_at
      t.timestamps null: false
    end
  end
end
