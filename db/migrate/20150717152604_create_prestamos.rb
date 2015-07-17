class CreatePrestamos < ActiveRecord::Migration
  def change
    create_table :prestamos do |t|
      t.DateTime :devolucion
      t.DateTime :created_at

      t.timestamps null: false
    end
  end
end
