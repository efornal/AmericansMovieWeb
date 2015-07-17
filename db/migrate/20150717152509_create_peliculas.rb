class CreatePeliculas < ActiveRecord::Migration
  def change
    create_table :peliculas do |t|
      t.serial :id
      t.string :titulo
      t.string :director
      t.string :origen
      t.integer :duracion
      t.integer :stock
      t.integer :codigo

      t.timestamps null: false
    end
  end
end
