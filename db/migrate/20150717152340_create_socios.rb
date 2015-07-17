class CreateSocios < ActiveRecord::Migration
  def change
    create_table :socios do |t|
      t.string :nombre
      t.string :apellido
      t.integer :nro_socio

      t.timestamps null: false
    end
  end
end
