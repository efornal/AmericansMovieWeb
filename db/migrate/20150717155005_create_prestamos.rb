class CreatePrestamos < ActiveRecord::Migration
  def change
    create_table :prestamos do |t|

      t.timestamps null: false
    end
  end
end
